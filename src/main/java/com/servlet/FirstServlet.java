package com.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(
        description = "Login servlet",
        urlPatterns = {"/FirstServlet"}
)
public class FirstServlet extends HttpServlet {
    public boolean validate(String regex, String userDetails){
        Pattern pattern= Pattern.compile(regex);
        Matcher matcher=pattern.matcher(userDetails);
        return matcher.matches();
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user=req.getParameter("username");
        String password=req.getParameter("password");
        String nameRegex="^[A-Z][a-z]{3,}";
        String passwordRegex="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&*-+=()]).{8,}$";
        if(validate(nameRegex,user)&&validate(passwordRegex,password)){
            req.setAttribute("user",user);
            req.getRequestDispatcher("welcome.jsp").forward(req,resp);
        }else{
            RequestDispatcher rd= getServletContext().getRequestDispatcher("/index.jsp");
            PrintWriter writer=resp.getWriter();
            writer.println("<font color=red>Invalid credentials</font>");
            rd.include(req,resp);
        }
    }
}
