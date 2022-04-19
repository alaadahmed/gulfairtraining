const colors = require('tailwindcss/colors');

module.exports = {
  content: ['./js/**/*.js', '../lib/*_web.ex', '../lib/*_web/**/*.*ex'],
  theme: {
    fontFamily: {
      sans: ['Inter', 'Noto Kufi Arabic', 'system-ui'],
    },
    extend: {
      colors: {
        sky: colors.sky,
        teal: colors.teal,
        rose: colors.rose,
      },
      backgroundPosition: {
        rtl: 'left 0.5rem center',
      },
      variants: {
        space: ['responsive', 'direction'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/typography'),
  ],
};
