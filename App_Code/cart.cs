using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace shoppingCart
{
/// <summary>
/// Summary description for cart
/// </summary>
    [Serializable]
    
        public class cartItem
        {
            private string _bookId;
            private string _book_Nm;
            private double _pri;
            private string _img;
            private int _quantity;
            private double _subTotal;
            public cartItem()
            {

            }
            public cartItem(string book_id,string book_nm,double price,string photo,int Quantity)
            {
                _bookId=book_id;
                _book_Nm=book_nm;
                _pri=price;
                _img=photo;
                _subTotal=Quantity*price;
            }
            public string book_id
            {
                get{return _bookId;}
                set{_bookId=value;}
            }
            public string book_nm
            {
                get{return _book_Nm;}
                set{_book_Nm=value;}
            }
            public double price
            {
                get{return _pri;}
                set{_pri=value;}
            }
            public string photo
            {
                get{return _img;}
                set{_img=value;}
            }
            public int Quantity
            {
                get{return _quantity;}
                set{_quantity=value;}
            }
            public double SubTotal
            {
                get{return Quantity*price;}
                set{_subTotal=value;}
            }
        }
    [Serializable]

    public class cart
    {
        private DateTime _dateCreated;
        private DateTime _lastUpdate;
        private List<cartItem> _items;

        public cart()
        {
            if (this._items == null)
            {
                this._items = new List<cartItem>();
                this._dateCreated = DateTime.Now;
            }
        }
        public List<cartItem> Items
        {
            get { return _items; }
            set { _items = value; }
        }
        public void Insert(string book_id, string book_nm, double price, string photo, int Quantity)
        {
            int ItemIndex = ItemIndexOfId(book_id);
            if (ItemIndex == -1)
            {
                cartItem NewItem = new cartItem();
                NewItem.book_id = book_id;
                NewItem.book_nm = book_nm;
                NewItem.price = price;
                NewItem.photo = photo;
                NewItem.Quantity = Quantity;
                _items.Add(NewItem);
            }
            else
            {
                _items[ItemIndex].Quantity += 1;
            }
            _lastUpdate = DateTime.Now;
        }
        public void update(int RowId, string book_id, int Quantity, double price)
        {
            cartItem Item = _items[RowId];
            Item.book_id = book_id;
            Item.Quantity = Quantity;
            Item.price = price;
            _lastUpdate = DateTime.Now;
        }
        public void deleteItem(int RowId)
        {
            _items.RemoveAt(RowId);
            _lastUpdate = DateTime.Now;
        }
        private int ItemIndexOfId(string book_id)
        {
            int index = 0;
            foreach (cartItem item in _items)
            {
                if (item.book_id == book_id)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }
        public double Total
        {
            get 
            {
                double t = 0;
                if (_items == null)
                {
                    return 0;
                }
                foreach (cartItem Item in _items)
                {
                    t += Item.SubTotal;
                }
                return t;
            }
        }
    }
   
}
    
    
