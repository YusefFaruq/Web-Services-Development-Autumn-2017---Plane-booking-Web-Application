
package uts.wsd;

import javax.xml.bind.annotation.*;
import java.io.Serializable;
import java.util.Date;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
public class Customer implements Serializable {

    private String name;
    private String email;
    private String password;
    private Date dob;
    private Boolean admin;

    


    public Customer() {
        super();
    }

    public Customer(String name, String email, String password, Date dob, Boolean admin) {
        super();
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.admin = admin;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }
    
    public Boolean getAdmin() {
        return admin;
    }

    public void setAdmin(Boolean admin) {
        this.admin = admin;
    }

}
