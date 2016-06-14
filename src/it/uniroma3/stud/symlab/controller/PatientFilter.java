package it.uniroma3.stud.symlab.controller;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class PatientFilter implements Filter {
    private ServletContext application;

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();

        if (session.getAttribute("patient") == null) {
            String nextPage = "/faces/login.jsp";
            nextPage = res.encodeURL(nextPage);
            RequestDispatcher rd = this.application.getRequestDispatcher(nextPage);
            rd.forward(req, res);
        }

        chain.doFilter(request, response);
    }

    public void init(FilterConfig fConfig) throws ServletException {
        this.application = fConfig.getServletContext();
    }

    public void destroy() {

    }


}