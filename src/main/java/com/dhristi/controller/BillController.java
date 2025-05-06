package com.dhristi.controller;

import com.dhristi.model.BillModel;
import com.dhristi.service.BillService;
import com.dhristi.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

/**
 * BillController handles creation and listing of bills for patient appointments.
 */
@WebServlet("/bills")
public class BillController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final BillService svc = new BillService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer pid = (Integer) SessionUtil.getAttribute(req, "userId");
        if (pid == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        try {
            List<BillModel> bills = svc.listByPatient(pid);
            req.setAttribute("bills", bills);
            req.getRequestDispatcher("/pages/Patient/bill.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Failed to list bills", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Integer pid = (Integer) SessionUtil.getAttribute(req, "userId");
        if (pid == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        try {
            BillModel b = new BillModel();
            b.setPatientId(pid);
            b.setAppointmentId(Integer.parseInt(req.getParameter("appointmentId")));
            b.setTotalAmount(new BigDecimal(req.getParameter("amount")));
            b.setPaymentStatus(req.getParameter("status"));
            b.setPaymentMethod(req.getParameter("method"));
            b.setInvoiceUrl(req.getParameter("invoiceUrl"));
            String pd = req.getParameter("paymentDate");
            if (pd != null && !pd.isEmpty()) {
                b.setPaymentDate(java.sql.Date.valueOf(pd));
            }
            boolean ok = svc.createBill(b);
            if (!ok) {
                req.setAttribute("error", "Could not create bill.");
                req.getRequestDispatcher("/pages/Admin/Billing.jsp").forward(req, resp);
                return;
            }
            resp.sendRedirect(req.getContextPath() + "/bills");
        } catch (Exception e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/pages/Admin/Billing.jsp").forward(req, resp);
        }
    }
}
