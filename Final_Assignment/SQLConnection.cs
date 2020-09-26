using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Final_Assignment
{
    public class SQLConnection
    {
        private string connectionString;

        public SQLConnection()
        {
            connectionString = "Data Source=DESKTOP-DOPM7V3;Initial Catalog=Final_Assignment;Integrated Security = true";
        }

        public SQLConnection(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //get Data
        public DataTable getDataSQL(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            dt.Load(command.ExecuteReader());
            connection.Close();
            return dt;
        }

        //insert, update, delete
        public void executeSQL(string query)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}