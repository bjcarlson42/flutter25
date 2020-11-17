import React from 'react';
import NextLink from 'next/link';
import { Flex, Box, Image, Button, Link } from '@chakra-ui/core';
import styled from '@emotion/styled'

const StickyNav = styled(Flex)`
  position: sticky;
  z-index: 10;
  top: 0;
  backdrop-filter: saturate(180%) blur(20px);
  transition: height .5s, line-height .5s;
`

const Container = ({ children }) => (
  <>
    <Box bg="blue.50">
      <Flex
        flexDirection="row"
        justifyContent="space-between"
        alignItems="center"
        maxWidth="800px"
        width="100%"
        as="nav"
        p={0, 4, 8}
        mx="auto"
      >
        <StickyNav
          flexDirection="row"
          justifyContent="space-between"
          alignItems="center"
          maxWidth="800px"
          minWidth="320px"
          width="100%"
          bg='blue.50'
          as="nav"
          px={6}
          py={2}
          mt={[0, 0, 8]}
          mb={[0, 0, 8]}
          mx="auto"
        >
          <NextLink href="/" passHref>
            <Box as="a">
              <Image src="/logo.png" size="50px"></Image>
            </Box>
          </NextLink>
          <Box>
            <NextLink href="#about" passHref>
              <Button as="a" variant="ghost" p={[1, 2, 4]} _hover={{ backgroundColor: 'blue.200' }}>
                About
            </Button>
            </NextLink>
            <NextLink href="#content" passHref>
              <Button as="a" variant="ghost" p={[1, 2, 4]} _hover={{ backgroundColor: 'blue.200' }}>
                Content
            </Button>
            </NextLink>
            <Link href="https://github.com/bjcarlson42/flutter25" isExternal _hover={{ textDecoration: 'none' }}>
              <Button variant="ghost" p={[1, 2, 4]} _hover={{ backgroundColor: 'blue.200' }}>
                Code
            </Button>
            </Link>
          </Box>
        </StickyNav >
      </Flex>
    </Box>
    {children}
  </>
);

export default Container;
