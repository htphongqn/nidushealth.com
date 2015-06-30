using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using GiaNguyen.Components;
using Controller;

namespace nidushealth.com.UIs
{
    public partial class ListNews : System.Web.UI.UserControl
    {
        #region Declare
        List_news lnews = new List_news();
        Function fun = new Function();
        clsFormat fm = new clsFormat();
        Pageindex_chage change = new Pageindex_chage();
        int _Catid = 0;
        string _cat_seo_url = string.Empty;
        int _page = 0;
        int _typecat = 0;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            _Catid = Utils.CIntDef(Session["Cat_id"]);
            _cat_seo_url = Request.QueryString["curl"];
            _page = Utils.CIntDef(Request.QueryString["page"]);
            _typecat = Utils.CIntDef(Request.QueryString["typecat"]);
            if (!IsPostBack)
            {
                Loadlist();
                Loadtitle();
            }
        }
        public void Loadtitle()
        {
            try
            {
                lbNewsTitle.Text = lnews.Loadtitle(_cat_seo_url);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void Loadlist()
        {
            try
            {
                int sotin = (_typecat == 0 ? lnews.Getsotin(_Catid) : 100);
                var list = lnews.Load_listnews(_Catid);
                if (list.Count > 0)
                {
                    if (_page != 0)
                    {
                        Rplistnews.DataSource = list.Skip(sotin * _page - sotin).Take(sotin);
                        Rplistnews.DataBind();
                    }
                    else
                    {
                        Rplistnews.DataSource = list.Take(sotin);
                        Rplistnews.DataBind();
                    }
                    ltrPage.Text = change.result(list.Count, sotin, _cat_seo_url, 0, _page, 1);

                }

            }
            catch (Exception)
            {

                throw;
            }
        }

        public string GetHtmlItemNews(object NEWS_URL, object NEWS_SEO_URL, object CAT_SEO_URL, object NEWS_ID, object NEWS_IMAGE3, object NEWS_TITLE, object NEWS_DESC, object NEWS_PUBLISHDATE)
        {
            string link, img;
            link = GetLink(NEWS_URL, NEWS_SEO_URL, CAT_SEO_URL);
            img = GetImageT(NEWS_ID, NEWS_IMAGE3);
            string str = String.Format(@"<div class='mediaItem'>
                    <div class='media'>
                        <div class='innerMedia'>
                            <div class='dateTime'>{0}</div>
                            <div class='thumb'><a>{1}</a></div>
                            <div class='text'>
                                <h3><a href='{2}'>{3}</a></h3>
                                <p>{4}</p>
                            </div>
                            <div class='viewMoreNews'>
                                <div class='fleft linePostL'><i class='glyphicon glyphicon-comment white'></i><a>News </a> </div>
                                <div class='fright linkViewMore'><a href='{5}'>View detail &raquo;</a></div>
                            </div>
                        </div>
                    </div>
                    </div>"
                ,NEWS_PUBLISHDATE, img, link, NEWS_TITLE, NEWS_DESC, link);
            return str;
        }

        #region function
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
                return fun.GetImageT_News_Hasclass(News_Id, News_Image1, "");
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