import React from 'react';
import { AiFillCloseCircle, AiFillCheckCircle } from "react-icons/ai";
import {
  Heading,
  Flex,
  Stack,
  Box,
  Text,
  List,
  ListItem,
  ListIcon,
  Divider,
  Link,
  Avatar,
  Button
} from '@chakra-ui/core';

import Container from '../components/Container';
import CourseList from '../components/CourseList';

const Index = () => (
  <Box as="main">
    <Flex justifyContent="center" flexDirection="column" bg="blue.50">
      <Container>
        <Stack
          as="section"
          spacing={8}
          justifyContent="center"
          alignItems="flex-start"
          m={['0 auto', null, '0 auto 4rem auto']}
          maxWidth="600px"
          px={8}
          pt={8}
          pb={[8, 8, 0]}
        >
          <Flex
            flexDirection="column"
            justifyContent="flex-start"
            alignItems="flex-start"
            maxWidth="600px"
          >
            <Heading
              letterSpacing="tight"
              mb={4}
              as="h1"
              size="2xl"
              fontWeight="bold"
            >
              25 Days Of Flutter
            </Heading>
            <Text color="gray.700" mb={4} fontSize="lg">
              Learn Flutter app development with one tutorial video a day December 1st to December 25th.
            </Text>
            <Flex flexDirection={["column", "row"]} p={2} align={["start", "center", "center"]}>
              <Button
                as="a"
                href="#content"
                fontWeight="bold"
                h="2.5rem"
                mr={1}
                size={["md"]}
                bg="blue.700"
                color="white"
                _hover={{ bg: 'blue.800' }}
                rightIcon="arrow-down"
                mb={[2, 0, 0]}
              >
                All 25 Videos
            </Button>
              <Link isExternal href="https://gumroad.com/l/flutter25" _hover={{ textDecoration: 'none' }}>
                <Button
                  h="2.5rem"
                  mr={1}
                  size="md"
                  rightIcon="arrow-forward"
                  variant="outline"
                  variantColor="blue.700"
                >
                  Pre Order
            </Button>
              </Link>
            </Flex>
          </Flex>
        </Stack>
      </Container>
    </Flex>
    <Box visibility={['hidden', 'hidden', 'visible']} h={[0, 0, 135]} as="div" backgroundColor="blue.50" style={{ transform: 'skewY(-4deg)' }} mt='-65px'></Box>
    <Flex justifyContent="center" flexDirection="column" mt={[4, 8, 0]}>
      <Stack
        as="section"
        spacing={8}
        justifyContent="center"
        alignItems="flex-start"
        m="0 auto 4rem auto"
        maxWidth="600px"
        mt={[4, 8, 16]}
        p={8}
      >
        <Flex
          flexDirection="column"
          justifyContent="flex-start"
          alignItems="flex-start"
          maxWidth="600px"
        >
          <Heading
            letterSpacing="tight"
            mb={4}
            mt={8}
            as="h2"
            size="lg"
            fontWeight="bold"
            id="about"
          >
            About The Course
            </Heading>
          <Text color="gray.600" mb={4} fontSize="md">
            In this course you will learn the basics of Flutter app development and finish by building
            a complete app using modern technologies like Google's Firebase.
          </Text>

          <Box
            backgroundColor="green.100"
            borderRadius={5}
            p={8}
            w="100%"
          >
            <Heading
              letterSpacing="tight"
              mb={4}
              as="h3"
              size="sm"
              fontWeight="bold"
            >
              This Course Offers:
            </Heading>
            <List spacing={3}>
              <ListItem>
                <ListIcon icon={AiFillCheckCircle} color="green.500" />
                Beginner Friendly
            </ListItem>
              <ListItem>
                <ListIcon icon={AiFillCheckCircle} color="green.500" />
                Complete App Build
            </ListItem>
              <ListItem>
                <ListIcon icon={AiFillCheckCircle} color="green.500" />
                Open-Source Code For Every Video
            </ListItem>
              <ListItem>
                <ListIcon icon={AiFillCheckCircle} color="green.500" />
                High Quality Video, Audio, And Information
            </ListItem>
            </List>
          </Box>

          <Box
            backgroundColor="red.100"
            borderRadius={5}
            p={8}
            mt={8}
            w="100%"
          >
            <Heading
              letterSpacing="tight"
              my={4}
              as="h3"
              size="sm"
              fontWeight="bold"
            >
              This Course Doesn't Offer:
            </Heading>
            <List spacing={3}>
              <ListItem>
                <ListIcon icon={AiFillCloseCircle} color="red.500" />
                Super Advanced Flutter Concepts
            </ListItem>
            </List>
          </Box>

          <Divider borderColor="gray.200" my={16} w="100%" />
          <Heading
            letterSpacing="tight"
            mb={4}
            as="h2"
            size="lg"
            fontWeight="bold"
            id="content"
          >
            Course Content
            </Heading>
          <Text color="gray.600" mb={4} fontSize="md">
            Below are all 25 videos in order. They are 100% free but if you would like to support me
            you can <Link isExternal color="blue.500" href="https://gumroad.com/l/flutter25">pay what you want</Link> on Gumroad.
          </Text>

          <CourseList />

          <Divider borderColor="gray.200" my={16} w="100%" />

          <Heading
            letterSpacing="tight"
            mb={4}
            as="h2"
            size="lg"
            fontWeight="bold"
          >
            Further Reading
            </Heading>
          <Text color="gray.600">If you've finished this awesome tutorial series and want to continue expanding your knowledge,
            or just want some helpful links as a reference, check out the links below.</Text>
          <List spacing={3} mt={4}>
            <ListItem>
              <ListIcon icon="check" color="blue.500" />
              <Link href="" isExternal>Flutter Docs</Link>
            </ListItem>
            <ListItem>
              <ListIcon icon="check" color="blue.500" />
              <Link href="" isExternal>GitHub code for this series</Link>
            </ListItem>
          </List>
          <Divider borderColor="gray.200" my={16} w="100%" />
          <Flex align="center">
            <Avatar
              size="lg"
              name="Benjamin Carlson"
              src="portrait.jpeg"
              mr={4}
            ></Avatar>
            <Box>
              <Text fontSize="12px" color="gray.600">Flutter25 is created by</Text>
              <Text fontWeight="bold" fontSize="18px">Benjamin Carlson</Text>
              <Text color="gray.600">Developer, creator, writer, and student living and working in CT.
              Learn more about me by <Link href="https://benjamincarlson.io" color="blue.500" isExternal>visiting my website</Link> or
              checking out my <Link href="https://youtube.com/benjamincarlson" color="blue.500" isExternal>YouTube channel</Link>.</Text>
            </Box>
          </Flex>
          <Divider borderColor="gray.200" my={16} w="100%" />

          <Text color="gray.400" fontSize="12px" alignSelf="center">Flutter25 - Created
          by <Link isExternal href="https://benjamincarlson.io" textDecoration="underline">Benjamin Carlson</Link></Text>
        </Flex>
      </Stack>
    </Flex>
  </Box>
);

export default Index;
