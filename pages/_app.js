import React from 'react';
import { Global, css } from '@emotion/core';
import { DefaultSeo } from 'next-seo';
import { ThemeProvider, CSSReset } from '@chakra-ui/core';
import Head from 'next/head'

import theme from '../styles/theme';
import SEO from '../next-seo.config';

const GlobalStyle = ({ children }) => (
  <>
    <Head>
      <meta content="IE=edge" httpEquiv="X-UA-Compatible" />
      <meta content="width=device-width, initial-scale=1" name="viewport" />
      <meta content="#da532c" name="theme-color" />
      <meta content="#ffffff" name="msapplication-TileColor" />
      <meta
        content="/favicons/browserconfig.xml"
        name="msapplication-config"
      />
      <link href="/favicons/favicon.ico" rel="shortcut icon" />
      <link href="/favicons/site.webmanifest" rel="manifest" />
      <link
        rel="preconnect"
        href="https://fonts.gstatic.com/"
        crossOrigin=""
      />
      <link
        rel="preload"
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap"
        as="style"
      />
      <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap"
        rel="stylesheet"
        media="print"
        onLoad="this.media='all'"
      />
      <link
        href="/favicons/apple-touch-icon.png"
        rel="apple-touch-icon"
        sizes="180x180"
      />
      <link
        href="/favicons/favicon-32x32.png"
        rel="icon"
        sizes="32x32"
        type="image/png"
      />
      <link
        href="/favicons/favicon-16x16.png"
        rel="icon"
        sizes="16x16"
        type="image/png"
      />
      <link
        color="#5bbad5"
        href="/favicons/safari-pinned-tab.svg"
        rel="mask-icon"
      />
    </Head>
    <CSSReset />
    <Global
      styles={css`
        ::selection {
          background-color: #90CDF4;
          color: #fefefe;
        }

        html {
          min-width: 360px;
          scroll-behavior: smooth;
        }

        #__next {
          display: flex;
          flex-direction: column;
          min-height: 100vh;
          background: white;
        }
      `}
    />
    {children}
  </>
);

const App = ({ Component, pageProps }) => {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyle>
        <DefaultSeo {...SEO} />
        <Component {...pageProps} />
      </GlobalStyle>
    </ThemeProvider>
  );
};

export default App;
