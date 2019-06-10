using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Test
{
    public class DbSql
    {
        public SqlConnection conn = null;
        public SqlDataAdapter da = null;
        public SqlCommand com = null;
        public DbSql()
        {
            //string connstr = "server=.;Database=library;uid=sa;pwd=123";
            //conn = new SqlConnection(connstr);
            //com = new SqlCommand();
            //com.Connection = conn;

            string connstr = "server=148.70.167.205;Database=pt_used;uid=sa;pwd=XG123456Lacky";
            conn = new SqlConnection(connstr);
            com = new SqlCommand();
            com.Connection = conn;
            da = new SqlDataAdapter("", conn);
        }
        /// <summary>
        /// 根据查询语句，将查询结果以DataTable类型返回，如果执行的是各种更新语句，则返回值无意义。
        /// </summary>
        /// <param name="selectSql"></param>
        /// <returns>查询结果</returns>
        public DataTable FillDt(string selectSql)
        {
            //com.CommandType = CommandType.Text;
            //com.CommandText = "select * from student";
            //da = new SqlDataAdapter(com);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //return dt;

            DataTable dt = new DataTable();
            da.SelectCommand.CommandText = selectSql;
            da.Fill(dt);
            return dt;
        }

        /// <summary>
        /// 执行各种SQL语句
        /// </summary>
        /// <param name="Sql">true表示执行成功,false表示执行失败</param>
        /// <returns></returns>
        public bool ExecSql(string Sql)
        {
            bool r = false;
            conn.Open();
            com.Connection = conn;
            com.CommandType = CommandType.Text;
            com.CommandText = Sql;
            com.ExecuteNonQuery();
            conn.Close();
            r = true;
            return r;
        }
    }
}


