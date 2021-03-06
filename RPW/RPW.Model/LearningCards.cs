﻿/**  版本信息模板在安装目录下，可自行修改。
* LearningCards.cs
*
* 功 能： N/A
* 类 名： LearningCards
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2015/9/9 13:30:47   N/A    初版
*
* Copyright (c) 2012 Maticsoft Corporation. All rights reserved.
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：动软卓越（北京）科技有限公司　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
using System;
namespace RPW.Model
{
	/// <summary>
	/// LearningCards:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class LearningCards
	{
		public LearningCards()
		{}
		#region Model
		private long _id;
		private long _courseid;
		private string _cardnum;
		private int _expiredays;
		private string _password;
		private long? _userid;
		private DateTime? _activedatetime;
		private bool _isactive;
		/// <summary>
		/// 
		/// </summary>
		public long Id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public long CourseId
		{
			set{ _courseid=value;}
			get{return _courseid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CardNum
		{
			set{ _cardnum=value;}
			get{return _cardnum;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int ExpireDays
		{
			set{ _expiredays=value;}
			get{return _expiredays;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Password
		{
			set{ _password=value;}
			get{return _password;}
		}
		/// <summary>
		/// 用户id和激活时间，设置为空。第一次生成的时候，是为空的。
		/// </summary>
		public long? UserId
		{
			set{ _userid=value;}
			get{return _userid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? ActiveDateTime
		{
			set{ _activedatetime=value;}
			get{return _activedatetime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public bool IsActive
		{
			set{ _isactive=value;}
			get{return _isactive;}
		}
		#endregion Model

	}
}

