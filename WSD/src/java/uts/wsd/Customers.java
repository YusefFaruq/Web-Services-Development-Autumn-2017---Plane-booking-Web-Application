
package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;

@XmlRootElement(name = "customers")
@XmlAccessorType(XmlAccessType.FIELD)
public class Customers implements Serializable {

    @XmlElement(name = "customer")
    private ArrayList<Customer> list = new ArrayList<>();

    public ArrayList<Customer> getList() {
        return list;
    }

    public void addCustomer(Customer customer) {
        list.add(customer);
    }

    public void removeCustomer(Customer customer) {
        list.remove(customer);
    }
    
    public Customer getCustomer(String email) {
        for (Customer customer : list) {
            if (customer.getEmail().equals(email)) {
                return customer;
            }
        }
        return null;
    }
    

    public Customer login(String email, String password) {
        for (Customer customer : list) {
            if (customer.getEmail().equals(email) && customer.getPassword().equals(password)) {
                return customer; // Login correct. Return this student.
            }
        }
        return null; // Login incorrect. Return null.
    }
}
