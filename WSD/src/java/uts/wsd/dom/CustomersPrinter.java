
package uts.wsd.dom;

import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.*;

public class CustomersPrinter {

   public static final Printer html = new HTMLPrinter();
    static File file = new File("web/WEB-INF/customers.xml");
    static String path = file.getAbsolutePath();
    

    public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
        PrintWriter out = new PrintWriter(new OutputStreamWriter(System.out), true);
        
        System.out.println("HTML Style Output: ");
       
        html.print(path, out);              
    }

    public static abstract class Printer {

        public abstract void print(Node node, PrintWriter out);

        public void print(String filePath, Writer out) throws ParserConfigurationException, SAXException, IOException {
            print(filePath, new PrintWriter(out, true));
        }

        public void print(String filePath, PrintWriter out) throws ParserConfigurationException, SAXException, IOException {
            FileInputStream in = new FileInputStream(filePath);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(in);
            Element root = document.getDocumentElement();
            print(root, out);
            out.flush();
        }
    }

   public static class HTMLPrinter extends Printer {

        public void print(Node node, PrintWriter out) {
            // INSERT YOUR CODE HERE
            int type = node.getNodeType();
            String name = node.getNodeName();
            String value = node.getNodeValue();
            switch(type){
                case Node.ELEMENT_NODE:
                    if(name.equals("customers"))
                        name = "table";
                    else if(name.equals("customer"))
                        name = "tr";
                    else
                        name = "td width=\"30%\"";
                    
                    out.print("<"+name+">");
                    if(name.equals("table")){
                        out.print("<hr>");
                        out.print("Customers List:");
                        out.print("\n<tr><td>Name</td><td>Email</td><td>Password</td><td>Date of Birth</td></tr>");
                        out.print("<hr>");
                    }
                    NodeList children = node.getChildNodes();
                    for(int i=0; i< children.getLength(); i++){
                        Node child = children.item(i);
                        print(child,out);
                    }
                    out.print("</"+name+">");
                    break;
                case Node.TEXT_NODE:
                    out.print(value);
                    break;
            }
        }
    }
}
