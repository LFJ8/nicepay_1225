using System;
using System.Web.UI;
public class index : Page{
    public String orderId;
    public string pay = "10000";

    //public int pay = test123123.Program.price;

    protected void Page_Load(object sender, EventArgs e){
        Guid uuid = Guid.NewGuid();
        orderId = uuid.ToString();
    }
}
