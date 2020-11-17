const title = '25 Days Of Flutter';
const description =
  'Learn Flutter app development in 25 days.';

const SEO = {
  title,
  description,
  canonical: 'https://flutter25.com',
  openGraph: {
    type: 'website',
    locale: 'en_IE',
    url: 'https://flutter25.com',
    title,
    description,
    images: [
      {
        url: 'https://flutter25.com/code.png',
        alt: title,
        width: 1200,
        height: 700
      }
    ]
  },
  twitter: {
    handle: '@bjmncrlsn',
    site: '@bjmncrlsn',
    cardType: 'summary_large_image'
  }
};

export default SEO;
