using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Practice.Classes;

namespace WebApp.Practice
{
    public partial class MovieLibrary : System.Web.UI.Page
    {
        private static List<Movie> library = new List<Movie>();
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieLibraryGridView.DataSource = library;
            MovieLibraryGridView.DataBind();

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                MessageLabel.Text = "Thank you for successfully filling out your movie form.";

                // pulling information from the form and the creating a Movielibrary object
                Movie newMovie = new Movie();
                newMovie.Title = MovieTitle.Text;
                newMovie.Year = int.Parse(Year.Text);
                newMovie.Media = Media.SelectedValue;
                newMovie.Rating = Rating.SelectedValue;
                newMovie.Review = Review.SelectedValue;
                newMovie.ISBN = ISBN.Text;

                // Add the movie to the list
                library.Add(newMovie);

                // Display the data in the gridview
                MovieLibraryGridView.DataSource = library;
                MovieLibraryGridView.DataBind(); 

            }
            else
            {
                MessageLabel.Text = "Form input was invalid";
            }
        }
    }
}