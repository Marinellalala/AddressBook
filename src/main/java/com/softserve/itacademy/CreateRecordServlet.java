package com.softserve.itacademy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/records/create")
public class CreateRecordServlet extends javax.servlet.http.HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() throws ServletException {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        boolean isCreated = addressBook.create(firstName, lastName, address);
        if (isCreated) {
            response.sendRedirect("/records/list");
        } else {
            request.setAttribute("error", "An error occurred. Please try again.");
            request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
        }

    }


}
