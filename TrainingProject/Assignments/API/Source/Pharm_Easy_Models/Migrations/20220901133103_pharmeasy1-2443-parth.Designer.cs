﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Pharm_Easy_Models;

namespace Pharm_Easy_Models.Migrations
{
    [DbContext(typeof(Context))]
    [Migration("20220901133103_pharmeasy1-2443-parth")]
    partial class pharmeasy12443parth
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .UseIdentityColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.0");

            modelBuilder.Entity("Pharm_Easy_Models.Models.AdminDetails", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("FirstName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MiddleName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("adminDetails");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.CArticle", b =>
                {
                    b.Property<int>("A_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<DateTime>("A_Date")
                        .HasColumnType("datetime2");

                    b.Property<string>("A_Discription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("C_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("A_Id");

                    b.ToTable("cArticles");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Cart", b =>
                {
                    b.Property<int>("C_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int?>("Off_Id1")
                        .HasColumnType("int");

                    b.Property<int>("Pr_Id")
                        .HasColumnType("int");

                    b.Property<string>("o_Details")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("product_quantity")
                        .HasColumnType("int");

                    b.HasKey("C_Id");

                    b.HasIndex("Off_Id1");

                    b.ToTable("carts");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Categories", b =>
                {
                    b.Property<int>("Cat_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Cat_Images")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Cat_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Cat_Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.CompanyDetails", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("designation")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("gstno")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("pan")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("CompanyDetails");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.DisplayDetails", b =>
                {
                    b.Property<string>("Full_Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Display_Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Pincode")
                        .HasColumnType("int");

                    b.HasKey("Full_Name");

                    b.ToTable("displayDetails");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Offers", b =>
                {
                    b.Property<int>("Off_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Off_Code")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Off_Discription")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Off_Id");

                    b.ToTable("offers");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Order", b =>
                {
                    b.Property<int>("o_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("Product_Id")
                        .HasColumnType("int");

                    b.Property<string>("o_Details")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("o_quantity")
                        .HasColumnType("int");

                    b.Property<int>("offer_Id")
                        .HasColumnType("int");

                    b.HasKey("o_Id");

                    b.ToTable("orders");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Product", b =>
                {
                    b.Property<int>("Pr_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("Cat_Id")
                        .HasColumnType("int");

                    b.Property<int?>("CategoriesCat_Id")
                        .HasColumnType("int");

                    b.Property<string>("Pr_Discription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Pr_Image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Pr_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Pr_Price")
                        .HasColumnType("int");

                    b.HasKey("Pr_Id");

                    b.HasIndex("CategoriesCat_Id");

                    b.ToTable("products");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.SProduct", b =>
                {
                    b.Property<int>("Pr_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Brand_Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Cat_Id1")
                        .HasColumnType("int");

                    b.Property<string>("Pr_Discription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Pr_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Pr_Price")
                        .HasColumnType("int");

                    b.HasKey("Pr_Id");

                    b.HasIndex("Cat_Id1");

                    b.ToTable("sproducts");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.SellerCatagories", b =>
                {
                    b.Property<int>("Cat_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Cat_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Cat_Id");

                    b.ToTable("scatagories");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.bankdetails", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("IFSC")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("aacount_type")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("account_number")
                        .HasColumnType("int");

                    b.Property<string>("bank_name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("bankdetails");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.hArticle", b =>
                {
                    b.Property<int>("H_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("H_Discription")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("H_Heading")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("H_Id");

                    b.ToTable("hArticles");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.login", b =>
                {
                    b.Property<int>("Mobile_Number")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Conform_Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Create_Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GST_Number")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Mobile_Number");

                    b.ToTable("logins");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Cart", b =>
                {
                    b.HasOne("Pharm_Easy_Models.Models.Offers", "Off_Id")
                        .WithMany()
                        .HasForeignKey("Off_Id1");

                    b.Navigation("Off_Id");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Product", b =>
                {
                    b.HasOne("Pharm_Easy_Models.Models.Categories", null)
                        .WithMany("products")
                        .HasForeignKey("CategoriesCat_Id");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.SProduct", b =>
                {
                    b.HasOne("Pharm_Easy_Models.Models.SellerCatagories", "Cat_Id")
                        .WithMany()
                        .HasForeignKey("Cat_Id1");

                    b.Navigation("Cat_Id");
                });

            modelBuilder.Entity("Pharm_Easy_Models.Models.Categories", b =>
                {
                    b.Navigation("products");
                });
#pragma warning restore 612, 618
        }
    }
}
