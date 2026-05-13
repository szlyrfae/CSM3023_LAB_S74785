package lab6.com;

import java.util.regex.Pattern;

public class Book {

    private String stuid;
    private String stuname;
    private String stuprogram;
    private String address;

    public Book() {
    }

    // Regex: mesti mula dengan huruf besar diikuti nombor
    public void setStuid(String stuid) throws Exception {
        if (Pattern.matches("^[A-Z]{2}[0-9]{5}$", stuid)) {
            this.stuid = stuid;
        } else {
            throw new Exception("Invalid Student ID format. Must start with 2 capital letters followed by 5 digits.");
        }
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuprogram(String stuprogram) {
        this.stuprogram = stuprogram;
    }

    public String getStuprogram() {
        return stuprogram;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }
}
