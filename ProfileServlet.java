package com.assignment.servlet;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

@WebServlet("/Profile")
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        
        HttpSession session = request.getSession();
        List<Map<String,String>> profiles = (List<Map<String,String>>) session.getAttribute("profiles");
        if (profiles == null) {
            profiles = new ArrayList<>();
        }

        Map<String,String> profile = new HashMap<>();
        profile.put("name", name);
        profile.put("studentId", studentId);
        profile.put("program", program);
        profile.put("email", email);
        profile.put("hobbies", hobbies);
        profile.put("intro", intro);

        profiles.add(profile);
        session.setAttribute("profiles", profiles);

        
        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
        dispatcher.forward(request, response);
    }
}
