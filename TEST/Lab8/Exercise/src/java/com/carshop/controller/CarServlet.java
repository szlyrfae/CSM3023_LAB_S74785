package com.carshop.controller;

import com.carshop.dao.CarDAO;
import com.carshop.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/cars")
public class CarServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CarDAO carDAO;

    @Override
    public void init() {
        carDAO = new CarDAO();
    }

    // ── GET: route based on "action" parameter ─────────────────────────────────
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "new":
                showNewForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "delete":
                deleteCar(req, resp);
                break;
            default:
                listCars(req, resp);
        }
    }

    // ── POST: handle form submissions ──────────────────────────────────────────
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "insert":
                insertCar(req, resp);
                break;
            case "update":
                updateCar(req, resp);
                break;
            default:
                listCars(req, resp);
        }
    }

    // ── LIST ───────────────────────────────────────────────────────────────────
    private void listCars(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carDAO.getAllCars();
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("list.jsp").forward(req, resp);
    }

    // ── SHOW NEW FORM ──────────────────────────────────────────────────────────
    private void showNewForm(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("form.jsp").forward(req, resp);
    }

    // ── SHOW EDIT FORM ─────────────────────────────────────────────────────────
    private void showEditForm(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Car car = carDAO.getCarById(id);
        req.setAttribute("car", car);
        req.getRequestDispatcher("form.jsp").forward(req, resp);
    }

    // ── INSERT ─────────────────────────────────────────────────────────────────
    private void insertCar(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Car car = buildCarFromRequest(req);
        carDAO.addCar(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }

    // ── UPDATE ─────────────────────────────────────────────────────────────────
    private void updateCar(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Car car = buildCarFromRequest(req);
        car.setCarId(Integer.parseInt(req.getParameter("carId")));
        carDAO.updateCar(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }

    // ── DELETE ─────────────────────────────────────────────────────────────────
    private void deleteCar(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        carDAO.deleteCar(id);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }

    // ── HELPER ────────────────────────────────────────────────────────────────
    private Car buildCarFromRequest(HttpServletRequest req) {
        String brand    = req.getParameter("brand");
        String model    = req.getParameter("model");
        int cylinder    = Integer.parseInt(req.getParameter("cylinder"));
        double price    = Double.parseDouble(req.getParameter("price"));
        return new Car(0, brand, model, cylinder, price);
    }
}
