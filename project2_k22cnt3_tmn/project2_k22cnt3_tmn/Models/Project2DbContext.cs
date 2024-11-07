using System.Data.Entity;
using System.Collections.Generic;

namespace project2_k22cnt3_tmn.Models
{
    public class Project2DbContext : DbContext
    {
        public Project2DbContext() : base("name=DefaultConnection") { }

        public DbSet<KhachHang> KhachHang { get; set; }
        public DbSet<QuanTriVien> QuanTriVien { get; set; }
        public DbSet<SanPham> SanPhams { get; set; }
        public DbSet<DonHang> DonHang { get; set; }
        public DbSet<ChiTietDonHang> ChiTietDonHang { get; set; }
    }
}
