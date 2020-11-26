package chap17.textbook;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.dbcp.dbcp2.ConnectionFactory;
import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;
import org.apache.tomcat.dbcp.dbcp2.PoolableConnection;
import org.apache.tomcat.dbcp.dbcp2.PoolableConnectionFactory;
import org.apache.tomcat.dbcp.dbcp2.PoolingDriver;
import org.apache.tomcat.dbcp.pool2.impl.GenericObjectPool;
import org.apache.tomcat.dbcp.pool2.impl.GenericObjectPoolConfig;

/**
 * Servlet implementation class DBCPInit2
 */
@WebServlet("/DBCPInit2")
public class DBCPInit2 extends HttpServlet {
    

    @Override
        public void init() throws ServletException {
            loadJDBCDriver();
            initConnectionPool();
        }
    
    
    
    private void loadJDBCDriver() {
        String driverClass= getInitParameter("jdbcdriver");
        try {
            Class.forName(driverClass);
        } catch (ClassNotFoundException ex) {
            // TODO: handle exception
            
            throw new RuntimeException("fail to load JDBC Driver", ex);
        }
    }
    private void initConnectionPool() {
        try {
            
            String jdbcUrl= getInitParameter("jdbcUrl");
            String username= getInitParameter("dbUser");
            String pw= getInitParameter("dbPass");
            
            ConnectionFactory connFactory= 
                    new DriverManagerConnectionFactory(jdbcUrl, username, pw);
            
            PoolableConnectionFactory poolableConnFactory = 
                    new PoolableConnectionFactory(connFactory, null);
            
            poolableConnFactory.setValidationQuery("select l");
            
            GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
            poolConfig.setTimeBetweenEvictionRunsMillis(1000L *60L * 5L );
            poolConfig.setTestWhileIdle(true);
            poolConfig.setMinIdle(4);
            poolConfig.setMaxTotal(50);
            
            GenericObjectPool<PoolableConnection> connectionPool=
                    new GenericObjectPool<>(poolableConnFactory, poolConfig);
            poolableConnFactory.setPool(connectionPool);
            
            Class.forName("org.apache.commons.dbcp2.poolingDriver");
            PoolingDriver driver=(PoolingDriver)
                    DriverManager.getDriver("jdbc:apache:commons:dbcp:");
            
            String poolName=getInitParameter("poolName");
            driver.registerPool(poolName, connectionPool);
        } catch (Exception e) {
            // TODO: handle exception
            throw new RuntimeException(e);
        }
    }
    
    
    
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBCPInit2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
