using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormsTest
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        bool isDown;
        bool isPresTop;
        bool isPresRight;
        bool isPresAngle;
        bool isPresBottom;
        int pWidth;
        int pHeight;
        Point pos = new Point();
        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            isDown = true;
            Control c = sender as Control;
            pWidth = c.Width;
            pHeight = c.Height;
            pos.X = e.X;
            pos.Y = e.Y;
            /////////////////////////////////////
            if ((e.X < c.Width && (c.Height - e.Y) < 20) && ((c.Width - e.X) < 20))
            {
                isPresAngle = true;
            }
            else
            {
                if ((c.Width - e.X) < 20)
                {
                    isPresRight = true;
                }
                else
                {
                    if (e.X < c.Width && (c.Height - e.Y) < 20)
                    {
                        isPresTop = true;
                    }
                    else
                    {

                        if (((c.Height + e.Y) - c.Height) < 25)
                        {
                            isPresBottom = true;
                        }
                    }
                }
            }
            /////////////////////////////////
        }

        private void panel1_MouseMove(object sender, MouseEventArgs e)
        {
            Control c = sender as Control;
            
            if (isDown)
            {
                check(c, e);
            }
        }
        private void panel1_MouseUp(object sender, MouseEventArgs e)
                
        {
            isDown = false;
            isPresTop = false;
            isPresRight = false;
            isPresAngle = false;
            isPresBottom = false;
            Cursor = Cursors.Default;//Возврат дефолтного вида курсора
        }

        private void check(Control c, MouseEventArgs e)
        {
            Point newPos = new Point(e.X - pos.X, e.Y - pos.Y);
            Point movePos = new Point(MousePosition.X - pos.X, MousePosition.Y - pos.Y);
            
            if ( isPresAngle)
            {
                c.Width = pWidth + newPos.X;
                c.Height = pHeight + newPos.Y;
                Cursor = Cursors.SizeNWSE;// Смена вида курсора
            }
            else
            {
                if ( isPresRight)
                {
                    c.Width = pWidth + newPos.X;
                }
                else
                {
                    if ( isPresTop)
                    {
                        c.Height = pHeight + newPos.Y;
                    }
                    else
                    {

                        if ( isPresBottom)
                        {
                            c.Location = PointToClient(movePos);
                        }
                    }
                }
            }
        }
    }
}
