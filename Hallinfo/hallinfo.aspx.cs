﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using try2.DAL;
using try2;
using System.Data;

namespace try2.Hallinfo
{
    public partial class hallinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT1 = new DataTable();
            DataTable DT2 = new DataTable();

            objmyDAl.display_halls_available(ref DT1);
            objmyDAl.display_halls_occupied(ref DT2);

            grid.DataSource = DT1;
            grid.DataBind();
            grid2.DataSource = DT2;
            grid2.DataBind();

        }
    }
}