package Hotel;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ovie
 */
public class RoomBean {
    int id;
    String bedType;
    String status;

    String description;
    String images;

    @Override
    public String toString() {
        return "RoomBean{" + "id=" + id + ", bedType=" + bedType + ", status=" + status + ", description=" + description + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    
    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }
}
