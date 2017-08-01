

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutMP
 */
@WebServlet("/LogoutMP")
public class LogoutMP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutMP() {
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
		//Get cookies and session
		Cookie[] cookies = request.getCookies();
		HttpSession session = request.getSession();
		
		//delete all cookies 
		if(cookies != null)
		{
			for(Cookie cookie: cookies){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		
		//delete session data
		session.removeAttribute("user");
		
		//send them back to login page (this calls doGet btw)
		response.sendRedirect("/WEBAPDE-MP2/Login");
	}

}
