package com.softserve.itacademy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/read")
public class ReadRecordServlet extends HttpServlet {

    private AddressBook addressBook;
    String firstName;
    String lastName;
    String address;

    @Override
    public void init() throws ServletException {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        firstName = request.getParameter("first-name");
        lastName = request.getParameter("last-name");
        address = addressBook.read(firstName, lastName);
        if (address != null) {
            request.setAttribute("address", address);
            request.getRequestDispatcher("/WEB-INF/read-record.jsp").forward(request, response);
        } else {
            response.sendError(404, String.format("Person with name '%s %s' not found in Address Book", firstName, lastName));
        }
    }
}
