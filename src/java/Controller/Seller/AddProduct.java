/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Seller;

import DAO.BrandDAO;
import DAO.CategoryDAO;
import DAO.ColorDAO;
import DAO.FilterDAO;
import DAO.ProductDAO;
import DAO.StoreDAO;
import DAO.TypeDAO;
import DAO.UserDAO;
import Model.Product.Brand;
import Model.Product.Category;
import Model.Product.Color;
import Model.Product.FilterProduct;
import Model.Product.ProductTypeColor;
import Model.Product.Type;
import Model.User.Store;
import Model.User.User;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sktnb
 */
public class AddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        UserDAO ub = new UserDAO();
        String username = null;
        String password = null;
        Cookie[] cookie = req.getCookies();
        if (cookie != null) {
            for (Cookie i : cookie) {
                if (i.getName().equals("c_s_u_tikilazapee")) {
                    username = i.getValue();
                }
                if (i.getName().equals("c_s_p_tikilazapee")) {
                    password = i.getValue();
                }
            }
        }
        HttpSession session = req.getSession();
        User user = ub.getUser(username, password);
        StoreDAO sd = new StoreDAO();
        FilterDAO fd = new FilterDAO();
        TypeDAO td = new TypeDAO();
        ColorDAO cod = new ColorDAO();
        CategoryDAO cd = new CategoryDAO();
        BrandDAO bd = new BrandDAO();
        List<Category> listc = cd.getAllCategory();
        List<FilterProduct> listf = fd.getListAllFilter();
        List<Type> listt = td.getListAllType();
        List<Color> listco = cod.getListAllColor();
        List<Brand> listb = bd.getAllBrand();
        Store store = new Store();
        store = sd.getStoreByIdForSeller(user.getUser_id());
        request.setAttribute("listc", listc);
        request.setAttribute("listf", listf);
        request.setAttribute("listt", listt);
        request.setAttribute("listco", listco);
        request.setAttribute("listb", listb);
        request.setAttribute("store", store);
        request.setAttribute("id", user.getUser_id());
        ServletContext context = request.getServletContext();
        context.getRequestDispatcher("/view/SellerView/addProduct.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Lấy dữ liệu từ form
            String txtName = request.getParameter("txtName");
            String txtPrice = request.getParameter("txtPrice");
            String txtDescription = request.getParameter("txtDescription");
            int categoryID = Integer.parseInt(request.getParameter("category"));
            int filterID = Integer.parseInt(request.getParameter("filter"));
            int brandID = Integer.parseInt(request.getParameter("brand"));
            int storeID = Integer.parseInt(request.getParameter("store"));
            int percentSale = Integer.parseInt(request.getParameter("percentSale"));
            String importDate = request.getParameter("importDate");
            String[] txtImages = request.getParameterValues("txtImages[]");

            // Lấy dữ liệu Type, Color và Quantity
            String[] typeIDs = request.getParameterValues("typeIDs[]");
            String[] colorIDs = request.getParameterValues("colorIDs[]");
            String[] quantities = request.getParameterValues("quantities[]");

            List<ProductTypeColor> typeColors = new ArrayList<>();
            for (int i = 0; i < typeIDs.length; i++) {
                int typeID = Integer.parseInt(typeIDs[i]);
                int colorID = Integer.parseInt(colorIDs[i]);
                int quantity = Integer.parseInt(quantities[i]);
                typeColors.add(new ProductTypeColor(0, 0, typeID, colorID, quantity));
            }

            // Gọi phương thức DAO để thêm sản phẩm vào cơ sở dữ liệu
            ProductDAO dao = new ProductDAO();
            dao.AddProduct(txtName, txtPrice, txtDescription, categoryID, filterID, brandID, storeID, percentSale, importDate, txtImages, typeColors.toArray(new ProductTypeColor[0]));

            // Chuyển hướng hoặc hiển thị thông báo thành công
            response.sendRedirect("manageproduct");
        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi ở đây nếu cần thiết
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
