using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

/// <summary>
/// SessionAccess 的摘要说明
/// </summary>
public class SessionAccess
{
    public SessionAccess()
    {
    }
    private class SessionKey
    {
        public const string RedirectUrl = "REDIRECTURL";
        public const string UserID = "UserID";
    }
    /// <summary>
    /// 当前的Session
    /// </summary>
    private static HttpSessionState Session
    {
        get
        {
            return HttpContext.Current.Session;
        }
    }

    /// <summary>
    /// 当前登录的用户ID
    /// 没有登录返回0
    /// </summary>
    public static int UserId
    {
        get
        {
            return Convert.ToInt32(Session[SessionKey.UserID] ?? "0");
        }
        set
        {
            Session[SessionKey.UserID] = value;
        }
    }
    /// <summary>
    /// 回去登录状态
    /// </summary>
    public static bool IsLogin
    {
        get
        {
            return UserId > 0;
        }
    }
    /// <summary>
    /// 重定向URL
    /// </summary>
    public static string RedirectUrl
    {
        get
        {
            string url = Session[SessionKey.RedirectUrl] as string ?? "/";

            Session.Remove(SessionKey.RedirectUrl);

            return url;
        }
        set
        {
            if (!string.IsNullOrEmpty(value))
            {
                Session[SessionKey.RedirectUrl] = value;
            }
        }
    }
}