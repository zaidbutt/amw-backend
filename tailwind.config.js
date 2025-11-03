module.exports = {
  content: [
    "./app/views/**/*.{erb,html,html.erb}",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.{css,scss}"
  ],
  theme: {
    extend: {
      colors: {
        amw: {
          ink:  "#280A32",
          sky:  "#047BC1",
          lilac:"#CE7CDE",
          mist: "#E7E7E7",
          ash:  "#8CA1A3",
          mid:  "#B5B5B5",
        },
      },
      borderRadius: { 'xl': '1rem', '2xl': '1.25rem' },
      boxShadow:   { card: "0 10px 20px rgba(40,10,50,0.08)" },
      fontFamily: {
        display: ['"Poppins"', 'ui-sans-serif', 'system-ui'],
        body:    ['"Oxygen"',  'ui-sans-serif', 'system-ui'],
      }
    },
  },
  plugins: [],
}
