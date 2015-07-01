using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;
using System.Web.UI.HtmlControls;
using vpro.functions;
using Controller;
using Model;

namespace nidushealth.com
{
    public partial class deufult : System.Web.UI.Page
    {        
        #region Declare
        Config cf = new Config();
        Propertity per = new Propertity();
        Function fun = new Function();
        Home index = new Controller.Home();
        List_news lnews = new Controller.List_news();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlHead header = base.Header;
            HtmlMeta headerDes = new HtmlMeta();
            HtmlMeta headerKey = new HtmlMeta();
            headerDes.Name = "Description";
            headerKey.Name = "Keywords";
            var _configs = cf.Config_meta();

            if (_configs.ToList().Count > 0)
            {
                if (!string.IsNullOrEmpty(_configs.ToList()[0].CONFIG_FAVICON))
                    ltrFavicon.Text = "<link rel='shortcut icon' href='" + PathFiles.GetPathConfigs() + _configs.ToList()[0].CONFIG_FAVICON + "' />";
                header.Title = _configs.ToList()[0].CONFIG_TITLE;

                headerDes.Content = _configs.ToList()[0].CONFIG_DESCRIPTION;
                header.Controls.Add(headerDes);

                headerKey.Content = _configs.ToList()[0].CONFIG_KEYWORD;
                header.Controls.Add(headerKey);
            }
            else
            {
                header.Title = "Enews Standard V1.0";

                headerDes.Content = "Enews Standard V1.0";
                header.Controls.Add(headerDes);

                headerKey.Content = "Enews Standard V1.0";
                header.Controls.Add(headerKey);
            }
            Load_CatLastNew();
            Load_CatMain();
            Load_CatAbout();
        }

        #region Load data
        public void Load_CatAbout()
        {
            try
            {
                var list = index.Load_cate_index(10, 4);
                rptCatAbout.DataSource = list;
                rptCatAbout.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        protected void Load_CatMain()
        {
            try
            {
                rptCatMain.DataSource = index.Load_cate_index(10, 0);
                rptCatMain.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        public void Load_CatLastNew()
        {
            try
            {
                var list = index.Load_cate_index(10, 3);
                rptCatLastNews.DataSource = list;
                rptCatLastNews.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        protected IQueryable Load_Menu2(object cat_parent_id)
        {
            try
            {
                var list = per.Menu2(cat_parent_id);
                return list;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        protected List<News_details_entity> Load_news(object cat_parent_id)
        {
            try
            {
                var list = lnews.Load_listnews(Utils.CIntDef(cat_parent_id));
                return list;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        #endregion

        #region Function
        public string GetLinkCat(object Cat_Url, object Cat_Seo_Url, object Cat_Type)
        {
            try
            {
                string temp = fun.Getlink_Cat(Cat_Url, Cat_Seo_Url);
                return temp;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public string Getimages_Cat(object Cat_Id, object Cat_Img)
        {
            try
            {
                string temp = fun.Getimages_Cat(Cat_Id, Cat_Img);
                return temp;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public string GetStyleActive(object Cat_Seo_Url, object Cat_Url)
        {
            try
            {
                string _curl = Utils.CStrDef(Request.QueryString["curl"]);
                string _seoUrl = Utils.CStrDef(Request.QueryString["purl"]);
                return per.GetStyleActive(Cat_Seo_Url, Cat_Url);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetLink(object News_Url, object News_Seo_Url, object cat_seo)
        {
            try
            {
                return fun.Getlink_News(News_Url, News_Seo_Url, cat_seo);
            }
            catch (Exception ex)
            {
                vpro.functions.clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageT(object News_Id, object News_Image1)
        {

            try
            {
                return fun.GetImageT_News(News_Id, News_Image1);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string getdate(object date)
        {
            return fun.getDate(date);
        }
        #endregion
    }
}