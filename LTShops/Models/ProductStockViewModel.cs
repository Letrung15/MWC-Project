﻿using Data.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LTShops.Models
{
    public class ProductStockViewModel
    {
        public Product Product { get; set; }
        public Gallery Gallery { get; set; }
        public List<Size> Sizes { get; set; }
        public List<long> SelectedSizeIds { get; set; }
        public List<ProductSize> ProductSizes { set; get; } = new List<ProductSize>();
        public int Stock { get; set; }
    }
}