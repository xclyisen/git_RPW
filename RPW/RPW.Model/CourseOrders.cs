﻿/**  版本信息模板在安装目录下，可自行修改。
* CourseOrders.cs
*
* 功 能： N/A
* 类 名： CourseOrders
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2015/9/26 23:06:56   N/A    初版
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
	/// CourseOrders:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class CourseOrders
	{
		public CourseOrders()
		{}
		#region Model
		private long _id;
		private long _courseid;
		private long _userid;
		private DateTime _createdatetime;
		private DateTime? _paydatetime;
		private bool _ispayed;
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
		public long UserId
		{
			set{ _userid=value;}
			get{return _userid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime CreateDateTime
		{
			set{ _createdatetime=value;}
			get{return _createdatetime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? PayDateTime
		{
			set{ _paydatetime=value;}
			get{return _paydatetime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public bool IsPayed
		{
			set{ _ispayed=value;}
			get{return _ispayed;}
		}
		#endregion Model

	}
}

