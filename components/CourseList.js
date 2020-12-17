import React, { useState } from 'react'
import {
    Heading,
    Text,
    Flex,
    Button,
    Stack,
    Link,
    Icon,
    Box
} from '@chakra-ui/core'

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
                    alignSelf={["start", "start", "center"]}
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
                    <Text color="gray.600" mb={2} fontSize="xs">
                        {duration}
                    </Text>
                    <Text color="gray.700" mb={2} fontSize="sm">
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
            title="Flutter Widgets You MUST Know (ListView, AppBar, SizedBox)"
            number="6"
            duration="12:57"
            href="https://youtu.be/StmIksiKG3I"
        >
            In this video we talk about the must know Flutter widgets and implement them all. We cover ListView, AppBar, Image, RaisedButton, Padding, Icon, IconButton, and SizedBox.
          </CardNew>
        <CardNew
            title="Building Your First Flutter UI"
            number="7"
            duration="14:09"
            href="https://youtu.be/cFKBU8G8Eik"
        >
            In this video, we take the flutter concepts we have learned so far and build a user interface!
          </CardNew>
        <CardNew
            title="Building Custom Widgets"
            number="8"
            duration="4:25"
            href="https://youtu.be/XrDKYORNSys"
        >
            We combine flutter widgets to build our own custom widget in the Flutter tutorial!
          </CardNew>
        <CardNew
            title="Flutter Packages You Must Know!"
            number="9"
            duration="15:15"
            href="https://youtu.be/mbC1DcRNPNU"
        >
            We look at the 4 flutter packages you must know!
          </CardNew>
        <CardNew
            title="Flutter Navigation - Routes And Pages"
            number="10"
            duration="5:53"
            href="https://youtu.be/tSn09-ACZwg"
        >
            Learn how to navigate between pages and routes in flutter. We also look at how to pass data through.
          </CardNew>
        <CardNew
            title="Create Flutter Instagram Style Bottom Navigation Bar"
            number="11"
            duration="10:45"
            href="https://youtu.be/JsrPsFLm0lQ"
        >
            In this tutorial we make an Instagram style bottom navigation bar.
        </CardNew>
        <CardNew
            title="Working With JSON In Dart + Flutter"
            number="12"
            duration="15:22"
            href="https://youtu.be/RUCIt_Lske4"
        >
            Learn how to handle basic json in dart and flutter.
        </CardNew>
        <CardNew
            title="Complex JSON Flutter Tutorial"
            number="13"
            duration="10:59"
            href="https://youtu.be/jSGNzH0MzEA"
        >
            Learn how to handle complex json in Flutter.
        </CardNew>
        <CardNew
            title="GitHub API In Flutter"
            number="14"
            duration="21:21"
            href="https://youtu.be/GimSf20Q8lI"
        >
            We fetch the repo endpoint of the GitHub API and display the repositories in a list view flutter widget.
          </CardNew>
        <CardNew
            title="Animations"
            number="15"
            duration="13:36"
            href="https://youtu.be/NuNftIAD_c0"
        >
            Make your app modern and user friendly by adding some animations!
        </CardNew>
        <CardNew
            title="Forms And User Input"
            number="16"
            duration="6:54"
            href="https://youtu.be/mp2ZybYTyGs"
        >
            Learn how to handle forms and use input in Flutter.
        </CardNew>
        <CardNew
            title="Flutter And Dart Lists 101"
            number="17"
            duration="5:14"
            href="https://youtu.be/vmHDtiej4AM"
        >
            We take a look at the map function, generate function, and using a custom widget to work with large lists of data in flutter and dart.
        </CardNew>
        <CardNew
            title="Best Folder Structure For Flutter Apps"
            number="18"
            duration="4:34"
            href="https://youtu.be/hAVeScMjr_w"
        >
            Learn the best practices for folder structure so you can keep your flutter app clean and organized.
        </CardNew>
        <CardNew
            title="Signup And Login Page UI - Christmas List App"
            number="19"
            duration=""
            href=""
        >
            Time to build a complete app! We start off by designing the UI using everything you have learned so far.
        </CardNew>
        <CardNew
            title="Home Screen UI - Christmas List App"
            number="20"
            duration=""
            href=""
        >
            Finishing the UI for our app.
        </CardNew>
        <CardNew
            title="Connecting Google's Firebase To Flutter (IOS/Android + Simulator/Real Device) - Christmas List App"
            number="21"
            duration=""
            href=""
        >
            Let's connect Google's Firebase and use it as our backend!
        </CardNew>
        <CardNew
            title="Firebase Authentication In Flutter - Christmas List App"
            number="22"
            duration=""
            href=""
        >
            Learn how to store data in cloud firestore.
        </CardNew>
        <CardNew
            title="Cloud Firestore In Flutter - Christmas List App"
            number="23"
            duration=""
            href=""
        >
            Adding authentication!
        </CardNew>
        <CardNew
            title="Christmas List app 6 - Finishing touches"
            number="24"
            duration=""
            href=""
        >
            The christmas app is complete! It utilizes modern design, Google's firebase, authentication, and more! 
            This is definitely a good app to add to your resume!
        </CardNew>
        <CardNew
            title="Where to go from here?"
            number="25"
            duration=""
            href=""
        >
            In this final video, we talk about the best next steps to take.
        </CardNew>
    </>
);

const CourseList = () => {
    const [isShowingFullCourseList, showFullCourseList] = useState(false);

    return (
        <>
            <CardNew
                title="Installing Flutter SDK On Android Studio + Xcode + VSCode"
                number="1"
                href="https://youtu.be/mErjqzaJIqg"
                duration='23:17'
            >
                In this video, we take our first look at Flutter and install a complete development environment
                on our machince including Android Studio, Xcode, and Visual Studio Code.
          </CardNew>
            <CardNew
                title="Dart Programming Basics Tutorial"
                number="2"
                duration='8:43'
                href='https://youtu.be/LNWX4HBN7HE'
            >
                In this video, I get you up to speed with everything you need to know about dart - the programming language that is used to build flutter apps!
          </CardNew>
            <CardNew
                title="What's A Flutter Widget? Basic Widgets Overview"
                number="3"
                duration='7:21'
                href='https://youtu.be/stYZwxVOSRU'
            >
                We take a look at what Flutter widgets are, and the basic Flutter widgets.
          </CardNew>
            <CardNew
                title="Flutter Rows And Columns In 7 Minutes"
                number="4"
                duration="7:11"
                href="https://youtu.be/stYZwxVOSRU"
            >
                Rows and Columns are the 2 widgets that make up every layout in Flutter. Learn how to use them in this quick tutorial!
          </CardNew>
            <CardNew
                title="Stateless vs. Stateful Widgets"
                number="5"
                duration="9:30"
                href="https://youtu.be/CfiRcIcLsEI"
            >
                In this video we take a look at the differences between stateless and stateful widgets in Flutter.
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