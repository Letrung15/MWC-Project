﻿using Data.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LTShops.Models
{
    public class OrderCustomerModel
    {
        public Order Order { get; set; }
        public Account Account { get; set; }
    }
}