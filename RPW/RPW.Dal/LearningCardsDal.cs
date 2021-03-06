﻿/**  版本信息模板在安装目录下，可自行修改。
* LearningCardsDal.cs
*
* 功 能： N/A
* 类 名： LearningCardsDal
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
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace RPW.Dal
{
	/// <summary>
	/// 数据访问类:LearningCardsDal
	/// </summary>
	public partial class LearningCardsDal
	{
		public LearningCardsDal()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string CardNum,long Id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from T_LearningCards");
			strSql.Append(" where CardNum=@CardNum and Id=@Id ");
			SqlParameter[] parameters = {
					new SqlParameter("@CardNum", SqlDbType.NVarChar,250),
					new SqlParameter("@Id", SqlDbType.BigInt,8)			};
			parameters[0].Value = CardNum;
			parameters[1].Value = Id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public long Add(RPW.Model.LearningCards model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into T_LearningCards(");
			strSql.Append("CourseId,CardNum,ExpireDays,Password,UserId,ActiveDateTime,IsActive)");
			strSql.Append(" values (");
			strSql.Append("@CourseId,@CardNum,@ExpireDays,@Password,@UserId,@ActiveDateTime,@IsActive)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@CourseId", SqlDbType.BigInt,8),
					new SqlParameter("@CardNum", SqlDbType.NVarChar,250),
					new SqlParameter("@ExpireDays", SqlDbType.Int,4),
					new SqlParameter("@Password", SqlDbType.NVarChar,50),
					new SqlParameter("@UserId", SqlDbType.BigInt,8),
					new SqlParameter("@ActiveDateTime", SqlDbType.DateTime),
					new SqlParameter("@IsActive", SqlDbType.Bit,1)};
			parameters[0].Value = model.CourseId;
			parameters[1].Value = model.CardNum;
			parameters[2].Value = model.ExpireDays;
			parameters[3].Value = model.Password;
			parameters[4].Value = model.UserId;
			parameters[5].Value = model.ActiveDateTime;
			parameters[6].Value = model.IsActive;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt64(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(RPW.Model.LearningCards model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update T_LearningCards set ");
			strSql.Append("CourseId=@CourseId,");
			strSql.Append("ExpireDays=@ExpireDays,");
			strSql.Append("Password=@Password,");
			strSql.Append("UserId=@UserId,");
			strSql.Append("ActiveDateTime=@ActiveDateTime,");
			strSql.Append("IsActive=@IsActive");
			strSql.Append(" where Id=@Id");
			SqlParameter[] parameters = {
					new SqlParameter("@CourseId", SqlDbType.BigInt,8),
					new SqlParameter("@ExpireDays", SqlDbType.Int,4),
					new SqlParameter("@Password", SqlDbType.NVarChar,50),
					new SqlParameter("@UserId", SqlDbType.BigInt,8),
					new SqlParameter("@ActiveDateTime", SqlDbType.DateTime),
					new SqlParameter("@IsActive", SqlDbType.Bit,1),
					new SqlParameter("@Id", SqlDbType.BigInt,8),
					new SqlParameter("@CardNum", SqlDbType.NVarChar,250)};
			parameters[0].Value = model.CourseId;
			parameters[1].Value = model.ExpireDays;
			parameters[2].Value = model.Password;
			parameters[3].Value = model.UserId;
			parameters[4].Value = model.ActiveDateTime;
			parameters[5].Value = model.IsActive;
			parameters[6].Value = model.Id;
			parameters[7].Value = model.CardNum;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(long Id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_LearningCards ");
			strSql.Append(" where Id=@Id");
			SqlParameter[] parameters = {
					new SqlParameter("@Id", SqlDbType.BigInt)
			};
			parameters[0].Value = Id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string CardNum,long Id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_LearningCards ");
			strSql.Append(" where CardNum=@CardNum and Id=@Id ");
			SqlParameter[] parameters = {
					new SqlParameter("@CardNum", SqlDbType.NVarChar,250),
					new SqlParameter("@Id", SqlDbType.BigInt,8)			};
			parameters[0].Value = CardNum;
			parameters[1].Value = Id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string Idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_LearningCards ");
			strSql.Append(" where Id in ("+Idlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public RPW.Model.LearningCards GetModel(long Id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Id,CourseId,CardNum,ExpireDays,Password,UserId,ActiveDateTime,IsActive from T_LearningCards ");
			strSql.Append(" where Id=@Id");
			SqlParameter[] parameters = {
					new SqlParameter("@Id", SqlDbType.BigInt)
			};
			parameters[0].Value = Id;

			RPW.Model.LearningCards model=new RPW.Model.LearningCards();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public RPW.Model.LearningCards DataRowToModel(DataRow row)
		{
			RPW.Model.LearningCards model=new RPW.Model.LearningCards();
			if (row != null)
			{
				if(row["Id"]!=null && row["Id"].ToString()!="")
				{
					model.Id=long.Parse(row["Id"].ToString());
				}
				if(row["CourseId"]!=null && row["CourseId"].ToString()!="")
				{
					model.CourseId=long.Parse(row["CourseId"].ToString());
				}
				if(row["CardNum"]!=null)
				{
					model.CardNum=row["CardNum"].ToString();
				}
				if(row["ExpireDays"]!=null && row["ExpireDays"].ToString()!="")
				{
					model.ExpireDays=int.Parse(row["ExpireDays"].ToString());
				}
				if(row["Password"]!=null)
				{
					model.Password=row["Password"].ToString();
				}
				if(row["UserId"]!=null && row["UserId"].ToString()!="")
				{
					model.UserId=long.Parse(row["UserId"].ToString());
				}
				if(row["ActiveDateTime"]!=null && row["ActiveDateTime"].ToString()!="")
				{
					model.ActiveDateTime=DateTime.Parse(row["ActiveDateTime"].ToString());
				}
				if(row["IsActive"]!=null && row["IsActive"].ToString()!="")
				{
					if((row["IsActive"].ToString()=="1")||(row["IsActive"].ToString().ToLower()=="true"))
					{
						model.IsActive=true;
					}
					else
					{
						model.IsActive=false;
					}
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select Id,CourseId,CardNum,ExpireDays,Password,UserId,ActiveDateTime,IsActive ");
			strSql.Append(" FROM T_LearningCards ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" Id,CourseId,CardNum,ExpireDays,Password,UserId,ActiveDateTime,IsActive ");
			strSql.Append(" FROM T_LearningCards ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM T_LearningCards ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.Id desc");
			}
			strSql.Append(")AS Row, T.*  from T_LearningCards T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "T_LearningCards";
			parameters[1].Value = "Id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

