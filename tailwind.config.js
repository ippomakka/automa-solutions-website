/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./dist/**/*.html"],
  theme: {
    extend: {
      colors: {
        'base': '#F7F7F4',
        'base-alt': '#FAFAF8',
        'text-primary': '#111111',
        'text-secondary': '#6B6B6B',
        'divider': '#EAEAEA',
        'lime': '#B6FF00',
        'purple': '#7C5CFF',
        'magenta': '#FF3EF7',
      },
      fontFamily: {
        sans: ['Inter', 'Space Grotesk', 'system-ui', 'sans-serif'],
      },
      borderRadius: {
        'card': '20px',
        'pill': '999px',
      },
      boxShadow: {
        'soft': '0 4px 20px rgba(0, 0, 0, 0.08)',
        'lift': '0 8px 30px rgba(0, 0, 0, 0.12)',
        'card': '0 10px 40px rgba(0, 0, 0, 0.1)',
      },
    },
  },
  plugins: [],
}
