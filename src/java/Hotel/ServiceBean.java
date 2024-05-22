package Hotel;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ovie
 */
public class ServiceBean {
    int id;
    String bedType;
    String status;
    String description;

//    public ServiceBean(int id, String bedType, String status, String description) {
//        this.id = id;
//        this.bedType = bedType;
//        this.status = status;
//        this.description = description;
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "ServiceBean{" + "id=" + id + ", bedType=" + bedType + ", status=" + status + ", description=" + description + '}';
    }

    public String getBedType() {
        return bedType;
    }

    public void setBedType(String bedType) {
        this.bedType = bedType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
