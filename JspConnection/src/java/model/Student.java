<<<<<<< Updated upstream

package model;


public class Student {
    
=======
package model;

public class Employee {

>>>>>>> Stashed changes
    private int id;
    private String name;
    private String email;
    private String address;
<<<<<<< Updated upstream
    private String cell;

    public Student() {
    }

    public Student(int id, String name, String email, String address, String cell) {
=======

    public Employee() {
    }

    public Employee(int id, String name, String email, String address) {
>>>>>>> Stashed changes
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
<<<<<<< Updated upstream
        this.cell = cell;
    }

    public Student(String name, String email, String address, String cell) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.cell = cell;
=======
    }

    public Employee(String name, String email, String address) {
        this.name = name;
        this.email = email;
        this.address = address;
>>>>>>> Stashed changes
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

<<<<<<< Updated upstream
    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }
    
    
=======
>>>>>>> Stashed changes
}
