﻿using Data.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LTShops.Models
{
    public class ProductRateModel
    {
        public Product Product { get; set; }
        public Rate Rate { get; set; }
    }
}