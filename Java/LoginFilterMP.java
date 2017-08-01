

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

/**
 * Servlet Filter implementation class LoginFilterMP
 */
// this means that lahat ng matamaan na servlet dadaan muna sa filter na to so basically it checks if the user is still logged in
@WebFilter(urlPatterns = {"/HomeServlet", "/SearchByTag", "/SharePhoto", "/TagPhoto", "/UploadPhoto", "/ViewPhoto", "/ViewProfile", "/ViewPublic"})
public class LoginFilterMP implements Filter {

	/**
	 * @see Filter#destroy()
	 */
    @Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
    @Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// cast to HttpServlet for use
				HttpServletRequest httpRequest = (HttpServletRequest) request;
				HttpServletResponse httpResponse = (HttpServletResponse) response;
				// retrieve person from session 
				User user = (User)httpRequest.getSession().getAttribute("user");
				if (user == null) {
					// person is null means the user is not logged in. 
					// forward user to login page
					httpResponse.sendRedirect("/WEBAPDE-MP2/LoginMP");
				} else {
					// if person is logged in then continue with the request
					chain.doFilter(request, response);
				}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
