package com.softserve.itacademy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class RecordsListServlet extends HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() throws ServletException {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/record-list.jsp");
        String sortBy = request.getParameter("sortBy") == null ? "" : request.getParameter("sortBy");
        if (sortBy.equals("asc")) {
            addressBook.sortedBy(SortOrder.ASC);
        }
        if (sortBy.equals("desc")) {
            addressBook.sortedBy(SortOrder.DESC);
        }
        request.setAttribute("records", addressBook.getAllRecords());
        requestDispatcher.forward(request, response);
    }
}

