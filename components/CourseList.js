import React, { useState } from 'react';
import {
    Heading,
    Text,
    Flex,
    Button,
    Stack,
    Link,
    Icon
} from '@chakra-ui/core';

const CardNew = ({ title, duration, href, number, children, ...content }) => (

    <Link
        href={href}
        isExternal
        borderRadius={8}
        {...content}
        _hover={{
            textDecoration: 'none',
            backgroundColor: 'blue.50'
        }}
        my={3}
        w="100%"
        py={2}
        px={1}
    >
        <Flex
            flexDirection="row"
            justifyContent="space-between"
            align="center"
        >
            <Flex direction={['column', 'column', 'row']}>
                <Text
                    fontSize="2xl"
                    mr={8}
                    alignSelf={["left", "left", "center"]}
                    fontWeight="normal"
                >
                    {number}.
                </Text>
                <Stack>
                    <Heading
                        letterSpacing="tight"
                        as="h3"
                        size="md"
                        fontWeight="medium"
                        mb={0}
                    >
                        {title}
                    </Heading>
                    {/* <Text color="gray.600" mb={2} fontSize="xs">
                        {duration}
                    </Text>Remov */}
                    <Text color="gray.700" mb={2} fontSize="sm" maxW="300px">
                        {children}
                    </Text>
                </Stack>
            </Flex>
            <Icon name="chevron-right"></Icon>
        </Flex>
    </Link>
);

const FullCourseList = () => (
    <>
        <CardNew
            title="Common Widgets"
            number="6"
        >
            We take a look at the most common Flutter widgets.
          </CardNew>
        <CardNew
            title="Building Layouts"
            number="7"
        >
            Let's start building some layouts!
          </CardNew>
        <CardNew
            title="Custom Widgets"
            number="8"
        >
            You'll see that we can build custom widgets from existing Flutter widgets.
          </CardNew>
        <CardNew
            title="Flutter Packages"
            number="9"
        >
            Learn how to speed up development time by using third party packages.
          </CardNew>
        <CardNew
            title="Navigation"
            number="10"
        >
            Learn how to navigate to another page.
          </CardNew>
        <CardNew
            title="Bottom Nav Bar"
            number="11"
        >
            In this tutorial we make an Instagram style bottom navigation bar.
        </CardNew>
        <CardNew
            title="Working With JSON"
            number="12"
        >
            Learn how to serialize and deserialize json data.
        </CardNew>
        <CardNew
            title="Working With JSON - Continued"
            number="13"
        >
            Working with complex json.
        </CardNew>
        <CardNew
            title="Working with external API's"
            number="14"
        >
            Use Flutter's HTTP package to interact with the Wordnik API.
          </CardNew>
        <CardNew
            title="Animations"
            number="15"
        >
            Make your app modern and user friendly by adding some animations!
        </CardNew>
        <CardNew
            title="Forms and user input"
            number="16"
        >
            We'll look at how we can take in user input using a form.
        </CardNew>
        <CardNew
            title="Working with lists of data - list widget, map function"
            number="17"
        >
            Learn how to handle lists of data and display it nicely while writing concise and robust code.
        </CardNew>
        <CardNew
            title="Structuring our flutter app - folder structure and best practices"
            number="18"
        >
            Learn how to structure your Flutter code using best practices.
        </CardNew>
        <CardNew
            title="Designing A User Interface - Christmas List App"
            number="19"
        >
            Time to build a complete app! We start off by designing the UI using everything you have learned so far.
        </CardNew>
        <CardNew
            title="Designing A User Interface - Continued - Christmas List App"
            number="20"
        >
            Finishing the UI for our app.
        </CardNew>
        <CardNew
            title="Connecting Google's Firebase - Christmas List App"
            number="21"
        >
            Let's connect Google Firebase and use it as our backend!
        </CardNew>
        <CardNew
            title="Cloud Firestore - Christmas List App"
            number="22"
        >
            Learn how to store data in cloud firestore.
        </CardNew>
        <CardNew
            title="Adding Authentication - Christmas List App"
            number="23"
        >
            Adding authentication!
        </CardNew>
        <CardNew
            title="Christmas List app 6 - Finishing touches"
            number="24"
        >

        </CardNew>
        <CardNew
            title="Where to go from here?"
            number="25"
        >

        </CardNew>
    </>
);

const CourseList = () => {
    const [isShowingFullCourseList, showFullCourseList] = useState(false);

    return (
        <>
            <CardNew
                title="What Is Flutter?"
                number="1"
                href=""
                // duration='10:54'
            >
                We will look at what Flutter is and set up a Flutter dev environment on our machine.
          </CardNew>
            <CardNew
                title="Introduction To Dart Programming"
                number="2"
            // duration='10:54'
            // href=''
            >
                We'll cover dart programming basics.
          </CardNew>
            <CardNew
                title="Everything Is A Widget"
                number="3"
            // duration='10:54'
            // href=''
            >
                An overview of the Flutter Widget(s).
          </CardNew>
            <CardNew
                title="Columns And Rows"
                number="4"
            >
                You'll learn that all layouts are simple a combination of rows and columns.
          </CardNew>
            <CardNew
                title="Stateless vs. Stateful"
                number="5"
            >
                When should you use a stateful widget vs. a stateless widget? Find out in this tutorial.
          </CardNew>
            {isShowingFullCourseList ? (
                <FullCourseList />
            ) : (
                    <Button
                        my={4}
                        mx="auto"
                        fontWeight="medium"
                        rightIcon="chevron-down"
                        variant="ghost"
                        onClick={() => showFullCourseList(true)}
                    >
                        See All
                    </Button>
                )}
        </>
    );
};

export default CourseList;