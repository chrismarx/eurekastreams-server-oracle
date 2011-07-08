package org.eurekastreams.server;

import org.junit.extensions.cpsuite.ClasspathSuite;
import org.junit.extensions.cpsuite.ClasspathSuite.ClassnameFilters;
import org.junit.extensions.cpsuite.ClasspathSuite.IncludeJars;
import org.junit.runner.RunWith;

/**
 * Uses the cpsuite junit extension to run tests on classpath (referenced project, jars, etc)
 * @author cm325
 *
 * Note: use @IncludeJars(true) if you don't have the eurekastreams-server project available locally
 */
@RunWith(ClasspathSuite.class)
@ClassnameFilters({"org.eurekastreams.server.domain.ApplicationAlertNotificationTest"})
public class SingleFileOnClassPathTest{}