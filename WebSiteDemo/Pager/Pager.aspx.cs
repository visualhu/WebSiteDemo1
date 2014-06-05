using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteDemo.Pager
{
    public partial class Pager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitGridView();
            InitGridView1();
        }

        #region 分页Demo1
        ///<summary>
        ///分页控件
        ///</summary>
        ///<param name="recordCount">记录总数</param>
        ///<param name="pageIndex">分页索引</param>
        ///<param name="pageSize">分页大小</param>       
        /// <returns>返回分页的Html代码</returns>
        public static string Html(int recordCount, int pageIndex, int pageSize)
        {
            string result = string.Empty;


            pageSize = pageSize < 1 ? 10 : pageSize;
            pageIndex = pageIndex < 1 ? 1 : pageIndex;
            recordCount = recordCount < 1 ? 1 : recordCount;

            if (recordCount > pageSize)
            {
                int pageCount = (recordCount % pageSize) == 0 ? (recordCount / pageSize) : (recordCount / pageSize) + 1;

                string pageLink = PageLinkConstruct();

                if (pageIndex > pageCount)
                {
                    pageIndex = pageCount;
                }

                string htmlLeftPage = string.Empty;
                string htmlRightPage = string.Empty;

                //前两页
                for (int i = 2; i > 0; i--)
                {
                    if (pageIndex - i > 0)
                    {
                        htmlLeftPage += string.Format("<a href=\"{0}\">{1}</a>", string.Format(pageLink, (pageIndex - i)), pageIndex - i);
                    }
                }
                //后两页
                for (int j = 1; j < 3; j++)
                {
                    if (pageIndex + j <= pageCount)
                    {
                        htmlRightPage += string.Format("<a href=\"{0}\">{1}</a>", string.Format(pageLink, (pageIndex + j)), pageIndex + j);
                    }
                }

                int prevPage = pageIndex - 1;

                if (prevPage < 1)
                {
                    prevPage = 1;
                }

                int nextPage = pageIndex + 1;

                if (nextPage > pageCount)
                {
                    nextPage = pageCount;
                }

                string leftHtml = string.Empty;

                if (pageIndex > 1)
                {
                    leftHtml = string.Format("<a {0}>{1}</a><a {2}>{3}</a>{4}", string.Format("href=\"{0}\"", string.Format(pageLink, 1)), "首页", string.Format("href=\"{0}\"", string.Format(pageLink, prevPage)), "上一页", htmlLeftPage);
                }

                string rightHtml = string.Empty;

                if (pageIndex < pageCount)
                {
                    rightHtml = string.Format("{0}<a {1}>{2}</a><a {3}>{4}</a>", htmlRightPage, string.Format("href=\"{0}\"", string.Format(pageLink, nextPage)), "下一页", string.Format("href=\"{0}\"", string.Format(pageLink, pageCount)), "尾页");
                }

                result = string.Format("<div class=\"htmlpager\">{0}<b>{1}</b>{2}</div>", leftHtml, pageIndex, rightHtml);
            }

            return result;

        }

        /// <summary>
        /// 构造翻页Url
        /// </summary>
        /// <returns></returns>
        private static string PageLinkConstruct()
        {
            HttpContext hc = HttpContext.Current;

            StringBuilder sb = new StringBuilder();

            if (!string.IsNullOrEmpty(hc.Request.QueryString["page"]))
            {
                for (int i = 0; i < hc.Request.QueryString.Count; i++)
                {
                    if (hc.Request.QueryString.Keys[i] != "page")
                    {
                        sb.AppendFormat("{0}={1}", hc.Request.QueryString.Keys[i], hc.Request.QueryString[i].ToString());
                        sb.Append("&");
                    }
                    else
                    {
                        sb.Append("page={0}&");
                    }
                }
            }
            else
            {
                for (int i = 0; i < hc.Request.QueryString.Count; i++)
                {
                    sb.AppendFormat("{0}={1}", hc.Request.QueryString.Keys[i], hc.Request.QueryString[i].ToString());
                    sb.Append("&");
                }

                sb.Append("page={0}&");
            }

            if (sb.Length > 0)
            {
                sb.Remove(sb.Length - 1, 1);
            }

            var url = new UriBuilder();

            url.Scheme = hc.Request.Url.Scheme;
            url.Host = hc.Request.Url.Host;
            url.Port = hc.Request.Url.Port;
            url.Path = hc.Request.Url.AbsolutePath;
            url.Query = sb.ToString();

            return url.ToString();
        }
        #endregion

        #region 分页Demo2
        private IList<Post> InitData()
        {
            var posts = new List<Post>();
            for(int i=0;i<100;i++)
            {
                posts.Add(new Post { PostId = i, PostName = "Name-" + i.ToString(), Descript = "这里是分页测试数据" });
            }
            return posts;
        }

        private void InitGridView()
        {
            var index = this.AspNetPager1.CurrentPageIndex-1;
            var pageSize=this.AspNetPager1.PageSize;
            gridStudent.DataSource = InitData().Skip(index * pageSize).Take(pageSize).ToList();
            gridStudent.DataBind();
            this.AspNetPager1.RecordCount = 100;
        }
        protected void AspNetPager1_PageChanging(object src,Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            this.AspNetPager1.CurrentPageIndex = e.NewPageIndex;
            InitGridView();
        }
        #endregion

        #region 分页Demo3
       
        private void InitGridView1()
        {
            var index = this.AspNetPager2.CurrentPageIndex - 1;
            var pageSize = this.AspNetPager1.PageSize;
            gridStudent1.DataSource = InitData().Skip(index * pageSize).Take(pageSize).ToList();
            gridStudent1.DataBind();
            this.AspNetPager2.RecordCount = 100;
        }
        protected void AspNetPager2_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            this.AspNetPager2.CurrentPageIndex = e.NewPageIndex;
            InitGridView1();
        }

        #endregion
    }
}