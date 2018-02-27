﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Messagelabel.Text = "Hello Webforms!";
        }

        protected void RespondToUser_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UserReply.Text))
                Messagelabel.Text = "What? Speak UP!";
            else
                Messagelabel.Text = "You dont say...";
        }
    }
}