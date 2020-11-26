package chap17;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx12
 */
@WebServlet("/ex12")
public class ServletEx12 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx12() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {

        super.init();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sql = "SELECT ename FROM employee WHERE eno = 7499";
        // 1.jdbc 드라이버 로딩
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // 2.데이터베이스 커넥션 구함
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        String url = "jdbc:oracle:thin:@localhost:1521:orcl";
        String id = "c##mydbms";
        String pw = "admin";
        try {
            con = DriverManager.getConnection(url, id, pw);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // 3.쿼리 실행을 위한 statement 객체 생성
        try {
            stmt = con.createStatement();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // 4.쿼리 실행
        try {
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // 5.쿼리 실행 결과 사용
        String name = "";
        try {
            if (rs.next()) {
                name = rs.getString("ename");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // 6. statement 종료
        try {
            stmt.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // 7. 데이터베이스 커넥션 종료
        try {
            con.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        String eno = request.getParameter("eno");
        if (eno == null) {
            eno = "0";
        }
        int idx = Integer.valueOf(eno);

        // db조회
        /*
         * ServletContext application = getServletContext(); List<String> list =
         * (List<String>) application.getAttribute("ename"); String ename =
         * list.get(idx);
         * 
         * // request attribute에 set request.setAttribute("name", name);
         */

        // forward
        String path = "/chap17/lecture/servletEx12View.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        dispatcher.forward(request, response);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
