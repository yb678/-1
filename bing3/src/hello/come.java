package hello;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.parser.Cookie;

/**
 * Servlet implementation class come
 */
@WebServlet("/come")
public class come extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public come() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());{
		 String chose=null;
//		 chose=request.getParameter("chose");
//		 if(chose!=null&&chose.equals("yes")){
//		String nam=request.getParameter("nam");
//		String paw=request.getParameter("paw");
//		Cookie cookie1=new Cookie("usernam",nam);//��nam����cookie��
//		Cookie cookie2=new Cookie("userpaw",paw);
//		cookie1.setMaxAge(10);
//		cookie2.setMaxAge(10);
//		response.addCookie(cookie1);//��cokie���浽�ͻ���
//		response.addCookie(cookie2);
//		request.getRequestDispatcher("login.jsp").forward(request, response);//���ͻ��˵�����ת��getRequestDispatcher���������ж��������
//		}
//		 else response.sendRedirect("hello.jsp");
//		 
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
