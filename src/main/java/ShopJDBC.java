import java.sql.*;

public class ShopJDBC {
    public static void main(String[] args) {
        ShopJDBC project = new ShopJDBC();
        //project.addData(8,"Bekish", "Shmeks", "lolipop@gmail.com", "ololo 12");
        project.selectDataFromCustomers();
    }

    Connection con;
    void addData(int id, String name, String last, String email, String address){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shop", "root", "asdfasd3");
            System.out.println("Connection done");
            String sql = "insert into customers (customers_id, first_name, last_name, email, address) values(?, ?, ?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.setString(2, name);
            stmt.setString(3, last);
            stmt.setString(4, email);
            stmt.setString(5, address);

            int rows = stmt.executeUpdate();
            if (rows > 6){
                System.out.println("New user has been added");
            }
            con.close();
        }catch(ClassNotFoundException ex){

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    void selectDataFromCustomers(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shop", "root", "asdfasd3");
            System.out.println("Connection done");

            String sql = "select * from customers";

            Statement stmt = con.createStatement();
            ResultSet result = stmt.executeQuery(sql);

            while (result.next()){
                int userId = result.getInt("customers_id");
                String fristName = result.getString("first_name");
                String lastName = result.getString("last_name");
                String email = result.getString("email");
                String address = result.getString("address");

                System.out.println(userId + ", " + fristName + ", " + lastName + ", " + email + ", "+ address + ", ");
            }
            con.close();

        }catch(ClassNotFoundException ex){

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
