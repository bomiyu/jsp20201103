package chap17.sample2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/sample2/form")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  private List<Post> list;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	ServletContext application = getServletContext();
    	Object obj = application.getAttribute("posts");
    	
    	if (obj == null) {
    		list = new ArrayList<>();
    		application.setAttribute("posts", list);
    	} else {
    		list = (List<Post>) obj;
    	}
    	
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/chap17/lecture/sample2/form.jsp";
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		if (title != null && body != null 
				&& !title.isEmpty() && !body.isEmpty()) {
			// �옒 �옉�꽦�릺�뿀�쑝硫�
			// db�뿉 ���옣 (�엫�떆濡� application�뿉 ���옣)
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			list.add(post);
			// 紐⑸줉�쓣 蹂댁뿬二쇰뒗 servlet�쑝濡� redirect
			response.sendRedirect(request.getContextPath() + "/sample2/list");
		} else {
			// �옒 �옉�꽦�릺吏� �븡�븯�쑝硫�
			
			// form.jsp濡� forward�맖
			doGet(request, response);
		}
		
		
	}
	
	

}





