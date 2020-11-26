package chap17;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataList
 */
@WebServlet("/DataList")
public class DataList extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataList() {
        super(); // 부모 생성자 실행
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html;charset=UTF-8");
        String sql = "SELECT ename FROM employee WHERE eno = 7499";
        
        
        Connection conn = null; // DB 연동할 객체 생성
 
        try { // jdbc connect j 라이브러리 로딩 예외 처리
            Class.forName("oracle.jdbc.driver.OracleDriver"); // 해당 클래스가 메모리에 로드 및 실행
        } catch (ClassNotFoundException e) {
            System.out.println("ClassNotFoundException: " + e.getMessage());
        } 
        String name = "";
        Statement stmt = null;
        ResultSet rs = null;
        try { // drive 클래스를 이용해 커넥션 객체에 localhost:3306/DB 와 연동 및 예외처리
            String url = "jdbc:oracle:thin:@localhost:1521:orcl";
            
            conn = DriverManager.getConnection(url, "c##mydbms", "admin"); // DB 로그인 정보로 연동
            
            stmt = conn.createStatement();
            
            // 4.쿼리 실행
            rs = stmt.executeQuery(sql);
            
            // 5.쿼리 실행 결과 사용
            
            if (rs.next()) {
              name = rs.getString("ENAME"); 
            }
            
            // 6. statement 종료
            stmt.close();
            
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        } finally {
            response.getWriter().append(conn.toString() + "<br/>");
            response.getWriter().append("localhost:1521/a (DateBase 연동 성공)");
    
            try {
                
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        System.out.println(name);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
