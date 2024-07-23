/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static DAO.dbConfig.con;
import Model.Blog.Blog;
import Model.Product.Category;
import Model.Blog.Interaction_Blog_Comment;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;


public class BlogDAO extends dbConfig {

    public BlogDAO() {
        super();
    }
     public List<Blog> getListBlog() 
     {
        List<Blog> listCata = new ArrayList<>();
        String sql = "select * from [Blog]";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7));

                Category category = new CategoryDAO().getCategoryById(rs.getInt(3));
                b.setCategory(category);
                listCata.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listCata;
    }
     public List<Blog> getListBlogForSeller(int user_id) {
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT [blog_id]\n"
                + "      ,[user_id]\n"
                + "      ,[category_id]\n"
                + "      ,[blog_title]\n"
                + "      ,[blog_content]\n"
                + "      ,[blog_image]\n"
                + "      ,[blog_create_day]\n"
                + "  FROM [Tikilazapee].[dbo].[Blog] \n"
                + "  Where user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int blog_id = rs.getInt(1);
                int category_id = rs.getInt(3);
                String blog_title = rs.getString(4);
                String blog_content = rs.getString(5);
                String blog_image = rs.getString(6);
                Date blog_create_day = rs.getDate(7);
                Blog blog = new Blog(blog_id, user_id, category_id, blog_title, blog_content, blog_image, blog_create_day);
                list.add(blog);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return list;
     }

    // hung 
    public Blog getBlogByBlogId(int blog_id){
        
        String sql ="select * from Blog where blog_id = ?";
        Blog blog = null;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, blog_id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                blog_id = rs.getInt("blog_id");
                int category_id = rs.getInt("category_id");
                int user_id = rs.getInt("user_id");
                String blog_title = rs.getString("blog_title");
                String blog_content = rs.getString("blog_content");
                Date blog_create_day = rs.getDate("blog_create_day");
                String blog_image = rs.getString("blog_image");
//                String comment = rs.getString("comment");
                
                List<Interaction_Blog_Comment> listcomment = new ArrayList();

                blog = new Blog();
                blog.setBlog_id(blog_id);
                blog.setUser_id(user_id);
                blog.setCategory_id(category_id);
                blog.setBlog_title(blog_title);
                blog.setBlog_content(blog_content);
                blog.setBlog_image(blog_image);
                blog.setBlog_create_day(blog_create_day);
//                Interaction_Blog_Comment cm = new Interaction_Blog_Comment();
//                cm.setComment(comment);
//                listcomment.add(cm);
//                blog.setListComment(listcomment);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return blog;
    }
    
    public int getReactionByBlogId(int blog_id) {
        String sql = "select COUNT(*) from Interaction_Blog\n"
                + "where blog_id = ?";

        int total = 0;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, blog_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                total = rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return total;
    }

    public List<Blog> getAllBlogs() {
        List<Blog> listBlog = new ArrayList<>();
        String sql = "SELECT blog_id, \n"
                + "    [user_id],\n"
                + "    [category_id],\n"
                + "    [blog_title],\n"
                + "    [blog_content],\n"
                + "    [blog_image],\n"
                + "    [blog_create_day]\n"
                + "FROM \n"
                + "    [Blog]\n"
                + "ORDER BY \n"
                + "    [blog_create_day] DESC;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("user_id");
                int category_id = rs.getInt("category_id");
                String blog_title = rs.getString("blog_title");
                String blog_content = rs.getString("blog_content");
                String blog_image = rs.getString("blog_image");
                Date blog_create_day = rs.getDate("blog_create_day");

                Blog blog = new Blog();
                blog.setBlog_id(rs.getInt(1));
                blog.setBlog_content(blog_content);
                blog.setBlog_create_day(blog_create_day);
                blog.setUser_id(user_id);
                blog.setBlog_image(blog_image);
                blog.setBlog_title(blog_title);
                blog.setCategory_id(category_id);

                listBlog.add(blog);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listBlog;
    }

    public List<Interaction_Blog_Comment> getListCommentByBlogId(int blog_id) {
        List<Interaction_Blog_Comment> listcomment = new ArrayList<>();
        String sql = "select * from Interaction_Blog_Comment\n"
                + "where blog_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, blog_id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                blog_id = rs.getInt("blog_id");
                int comment_id = rs.getInt("comment_id");
                int interaction_blog_id = rs.getInt("interaction_blog_id");

                Date comment_create_day = rs.getDate("comment_create_day");
                String comment = rs.getString("comment");
                Interaction_Blog_Comment cm = new Interaction_Blog_Comment();
                cm.setBlog_id(blog_id);
                cm.setComment(comment);
                cm.setComment_create_day(comment_create_day);
                cm.setComment_id(comment_id);
                cm.setInteraction_blog_id(interaction_blog_id);
                listcomment.add(cm);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listcomment;
    }

   

}
