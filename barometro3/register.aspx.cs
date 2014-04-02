using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;

public partial class register : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public class Datos 
    {
       
        public string email { get; set; }
        public string firstname {get;set;}
        public string lastname {get;set;}
        public string company {get;set;}
        public string phone {get;set;}
        public string job {get;set;}
        public string country { get; set; }
        public string twitter {get;set;}
        public string authorize {get;set;}
        public string city {get;set;}
        public string dates {get;set;}
		public string Relationship {get;set;}
    }

    [WebMethod]
    public static string getCountries()
    {
        string result;
        SqlDataReader datos;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();
        string strSQL = "SELECT idCountry,Country from C_Country order by Country";
        SqlCommand cmd = new SqlCommand(strSQL, con);
        try
        {
            con.Open();
            datos = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(datos);
            result = DataTableToJSON(dt);
            //result = new JavaScriptSerializer().Serialize(dt);
            con.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            result = "";
        }
        finally
        {
            con.Close();
        }
        return result;

    }

    public static string DataTableToJSON(DataTable table)
    {
        List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();

        foreach (DataRow row in table.Rows)
        {
            Dictionary<string, object> dict = new Dictionary<string, object>();

            foreach (DataColumn col in table.Columns)
            {
                dict[col.ColumnName] = row[col];
            }
            list.Add(dict);
        }
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        return serializer.Serialize(list);
    }

    [WebMethod]
    public static string getDatosOld(string email)
    {
        string result;
        SqlDataReader datos;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();
        string strSQL = "select nombre,apellido,empresa,titleContact,email,telefono,postal,empleados,idCountry,registerDate from Cala_Web.General2 where email ='" + email + "'  and registerDate = (select max(registerDate) as fecha_registro from Cala_Web.General2 where email = '" + email + "')";
        SqlCommand cmd = new SqlCommand(strSQL, con);
        try
        {
            con.Open();
            datos = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(datos);
            result = DataTableToJSON(dt);
            //result = JsonConvert.SerializeObject(dt);
            con.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            result = "";
        }
        finally
        {
            con.Close();
        }
        return result;

    }

    [WebMethod]
    public static string getDatosReg(string cityevent)
    {
        string result;
        SqlDataReader datos;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();
        string strSQL = "select email, firstname, lastname, company,phone,job,country,twitter,authorize,city,dates,Relationship from Cala_Web.Tbl_APCD where city ='" + cityevent + "'";
        SqlCommand cmd = new SqlCommand(strSQL, con);
        try
        {
            con.Open();
            datos = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(datos);
            result = DataTableToJSON(dt);
            //result = JsonConvert.SerializeObject(dt);
            con.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            result = "";
        }
        finally
        {
            con.Close();
        }
        return result;

    }

    
                                                                                                                         
    [WebMethod]
    public static string putData(string inputEmail, string inputName, string inputLast, string inputCompany, string address, string inputPhone,string city, 
        string state, string zip, string Relationship, string promocode,
        string cmp, string capture_point, int idCons  )
    {
        string result = "";
		string resultado = "";
        DateTime datt = DateTime.Now;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();

        string strSQL = "SELECT CURRENT_TIMESTAMP AS registerDate";
        SqlCommand cmd = new SqlCommand(strSQL, con);
        try
        {
            con.Open();
            datt = (DateTime)cmd.ExecuteScalar();
            con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        finally
        {
            con.Close();
        }

        //Se envian los datos a la consulta por parametro y no concatenandolos directamente para evitar inyección de código :D           
        string stmt = "INSERT INTO Cala_Web.General2 (email, nombre, apellido, empresa,direccion1,telefono,ciudad,estado,postal,observation1,promocode,cmpCode,campaignName,registerDate, idCons) VALUES (@email, @nombre, @apellido, @empresa, @direccion1, @telefono, @ciudad, @estado, @postal, @observation1, @promocode, @cmpCode, @campaignName, @date, @idCons)";

        SqlCommand cmd2 = new SqlCommand(stmt, con);

        cmd2.Parameters.Add("@email", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@nombre", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@apellido", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@empresa", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@direccion1", SqlDbType.VarChar, 200);
        cmd2.Parameters.Add("@telefono", SqlDbType.VarChar, 50);
        cmd2.Parameters.Add("@ciudad", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@estado", SqlDbType.VarChar, 100);
        cmd2.Parameters.Add("@postal", SqlDbType.VarChar, 10);
        cmd2.Parameters.Add("@observation1", SqlDbType.VarChar, 200);
        cmd2.Parameters.Add("@promocode", SqlDbType.VarChar, 50);
        cmd2.Parameters.Add("@cmpCode", SqlDbType.VarChar, 50);
        cmd2.Parameters.Add("@campaignName", SqlDbType.VarChar, 200);
        cmd2.Parameters.Add("@date", SqlDbType.DateTime);
        cmd2.Parameters.Add("@idCons", SqlDbType.Int);


        cmd2.Parameters["@email"].Value = inputEmail;
        cmd2.Parameters["@nombre"].Value = inputName;
        cmd2.Parameters["@apellido"].Value = inputLast;
        cmd2.Parameters["@empresa"].Value = inputCompany;
        cmd2.Parameters["@direccion1"].Value = address;
        cmd2.Parameters["@telefono"].Value = inputPhone;
        cmd2.Parameters["@ciudad"].Value = city;
        cmd2.Parameters["@estado"].Value = state;
        cmd2.Parameters["@postal"].Value = zip;
        cmd2.Parameters["@observation1"].Value = Relationship;
        cmd2.Parameters["@promocode"].Value = promocode;
        cmd2.Parameters["@cmpCode"].Value = cmp;
        cmd2.Parameters["@campaignName"].Value = capture_point;
        cmd2.Parameters["@date"].Value = datt;
        cmd2.Parameters["@idCons"].Value = idCons;
        
        
        try
        {
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            result = "ok";
            string nombrec = inputName + " " + inputLast;
            resultado = sendMails(nombrec, inputEmail);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            result = "fail";
        }
        finally
        {
            con.Close();
        }
		
        //return resultado;
        return result;
    }
	
	    public static string sendMails(string nombre, string correo)
        {
            string result = "";
			
            string title = "";
			
                    title ="Thank you for Registering"; 
               
			try
            {
                string plantilla = getContenidoMail(nombre);
                //string plantilla = getPlantilla();
                string rta_mail = SendMail(correo, "e-marketing@avaya.com", title, plantilla);

                result = "ok";
            }
            catch (Exception ex)
            {
                result = "false" + ex;
            }
            return result;
        }

        public static string SendMail(string to, string from, string subject, string contenido)
        {
            string respuesta = "";

            MailAddress sendfrom = new MailAddress(from);
            MailAddress sendto = new MailAddress(to);
            MailMessage message = new MailMessage();

            ContentType mimeType = new System.Net.Mime.ContentType("text/html");
            string body = HttpUtility.HtmlDecode(contenido);
            AlternateView alternate = AlternateView.CreateAlternateViewFromString(body, mimeType);
            message.AlternateViews.Add(alternate);

            message.From = new MailAddress(from);
            message.To.Add(to);
            message.Subject = subject;

            SmtpClient client = new SmtpClient("localhost");

            try
            {
                client.Send(message);
                respuesta = "ok";

            }
            catch (SmtpException e)
            {
                respuesta = "fail";
                throw new SmtpException(e.Message);

            }
            return respuesta;
        }

        public static string getContenidoMail(string nombre)
        {
            string plantilla = getPlantilla();

            Dictionary<string, string> dataIndex = new Dictionary<string, string>();
            dataIndex.Add("{nombre}", nombre);
            

            string buscar = "";
            string reemplazar = "";
            string index = "";
            //Recorrer la plantilla del index para reemplazar el contenido
            foreach (var datos in dataIndex)
            {
                buscar = datos.Key;
                reemplazar = datos.Value;
                index = plantilla.Replace(buscar, reemplazar);
                plantilla = index;
            }

            return plantilla;
        }

        public static string getPlantilla()
        {
            string fullPath = HttpContext.Current.Server.MapPath("~");

			string html = "";
            //Cambiar aca la ruta a donde se coloque el formulario.
            //fullPath = fullPath + "\\usa\\events\\APCD-2014";
	        html = File.ReadAllText(fullPath + "\\email.html");
            
	       return html;
        }
		
		[WebMethod]
        public static string Convertir(string format, string key)
        {
            string resultado = "";
            string path = HttpContext.Current.Server.MapPath("~");
			//path = path + "\\usa\\events\\APCD-2014";
            if (format == "XLS")
            {
                resultado = toExcel(path,key);
            }
            HttpContext.Current.Response.SetCookie(new HttpCookie("fileDownload", "true") { Path = "/" });
            return resultado;
			
        }
		
		public static string getContenido(string key)
        {
            string result = "";
            string resultado = getDatosReg(key);
            string tabla = "";
			var serializer = new JavaScriptSerializer();
			
            List<Datos> values = serializer.Deserialize<List<Datos>>(resultado);
            
           
            foreach (var root in values)
                {
                    tabla += "<tr>";
                    tabla += "<td>" + root.email + "</td>";
                    tabla += "<td>" + root.firstname + "</td>";
                    tabla += "<td>" + root.lastname + "</td>";
                    tabla += "<td>" + root.company + "</td>";
                    tabla += "<td>" + root.phone + "</td>";
                    tabla += "<td>" + root.job + "</td>";
                    tabla += "<td>" + root.country + "</td>";
                    tabla += "<td>" + root.twitter + "</td>";
                    tabla += "<td>" + root.authorize + "</td>";
                    //tabla += "<td>" + root.city + "</td>";
                    tabla += "<td>" + root.dates + "</td>";
					tabla += "<td>" + root.Relationship + "</td>";
                    
                    tabla += "</tr>";
                }
                
			
			
            result = tabla;
            return result;
        }
		
		public static string toExcel(string path1, string key)
        {
            string respuesta = "";
            string path = path1 + "\\ExcelFiles\\";
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
            string nombre = DateTime.Now.ToString("yyyyMMddhhmmss") + "Excel_File.xls";
            string fullPath = path1 + "\\ExcelFiles\\" + nombre;
            string contenido = getContenido(key);

            string data = "<tr><th width=\"10%\">Email</th><th width=\"10%\">First Name</th><th width=\"10%\">Last Name</th><th width=\"10%\">Company</th><th width=\"10%\">Phone</th><th width=\"10%\">Job</th><th width=\"10%\">Country</th><th width=\"10%\">Twitter</th><th width=\"10%\">Authorize</th><th width=\"10%\">Register Date</th><th width=\"10%\">Relationship</th></tr>";
            contenido = data + contenido;
            contenido = "<table border = '1' style=" + '"' + "font-family: Verdana,Arial,sans-serif; font-size: 12px;" + '"' + ">" + contenido + "</table></body></html>";

            try
            {
                FileStream fs = new FileStream(fullPath, FileMode.OpenOrCreate, FileAccess.Write);
                using (StreamWriter writer = new StreamWriter(fs, Encoding.UTF8))
                {
                    writer.Write(contenido);
                }
            }
            catch
            {
                respuesta = "fail";
            }
            finally
            {
                respuesta = nombre;
            }
            return respuesta;
        }

        [WebMethod(EnableSession = true)]
        public static string validarIngresoAdmin(string name, string pass, string app)
        {
            //APCD2014..   APCD   PCD
            string result = validarIngreso(name, pass, app);
            if (result == "ok")
            {
                var sessionUsuario = HttpContext.Current.Session;
                sessionUsuario["ID"] = name;
            }
            return result;
        }

        public static string validarIngreso(string name, string pass, string app)
        {
            
            string resultado = "";
            string usuario;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();

            string strSQL = "SELECT distinct usuario from UserData where usuario = '"+name+"' and password = '"+pass+"' and application = '" + app + "'";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            try
            {
                con.Open();
                usuario = (String)cmd.ExecuteScalar();
                con.Close();
                if (name == usuario)
                {
                    resultado = "ok";
                }
                else
                {
                    resultado = "fail";
                }
            }
            catch (Exception ex)
            {
                resultado = "fail";
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }

            return resultado;
        }

        [WebMethod]
        public static string validateEmail(string email)
        {

            string resultado = "";
            string usuario;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();

            string strSQL = "SELECT distinct email from Tbl_ATF_Net101 where email = '" + email + "'";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            try
            {
                con.Open();
                usuario = (String)cmd.ExecuteScalar();
                con.Close();
                if (usuario == null)
                {
                    resultado = "fail";
                }
                else
                {
                    resultado = "ok";
                }
            }
            catch (Exception ex)
            {
                resultado = "fail";
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }

            return resultado;
        }

    

        [WebMethod(EnableSession = true)]
        public static string validaSession()
        {
            string result = "";
            var sessionUsuario = HttpContext.Current.Session;
            if (sessionUsuario["ID"] == null)
            {
                result = "fail";
            }
            else
            {
                result = sessionUsuario["ID"].ToString();
            }
            return result;
        }



}

