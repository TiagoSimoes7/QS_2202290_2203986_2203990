package io.testproject.generated.tests.qspauloricardotiago;

import io.testproject.sdk.drivers.ReportingDriver;
import io.testproject.sdk.drivers.web.RemoteWebDriver;
import io.testproject.sdk.interfaces.junit5.ExceptionsReporter;
import java.lang.Exception;
import java.lang.Override;
import java.util.concurrent.TimeUnit;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;

/**
 * This class was automatically generated by TestProject
 * Project: Projeto Fase1 2202290_2203986_2203990
 * Test: Login Steps
 * Generated by: Tiago Simões (2203990@my.ipleiria.pt)
 * Generated on Thu Apr 08 08:51:54 GMT 2021.
 */
@DisplayName("Login Steps")
public class LoginSteps implements ExceptionsReporter {
  public static WebDriver driver;

  @BeforeAll
  static void setup() throws Exception {
    driver = new RemoteWebDriver("KYuYmxBwYSrl6nMC1PRpu6lMMM8jT8Sw90WHirc5rR0", new ChromeOptions(), "Tiago Simões");
  }

  @DisplayName("Login Steps")
  @Test
  void execute() throws Exception {
    // set timeout for driver actions (similar to step timeout)
    driver.manage().timeouts().implicitlyWait(15000, TimeUnit.MILLISECONDS);
    By by;
    boolean booleanResult;

    // 1. Click 'email'
    GeneratedUtils.sleep(500);
    by = By.cssSelector("#inputEmail");
    driver.findElement(by).click();

    // 2. Type 'test@quickstock.empresa1.com' in 'email'
    GeneratedUtils.sleep(500);
    by = By.cssSelector("#inputEmail");
    driver.findElement(by).sendKeys("test@quickstock.empresa1.com");

    // 3. Click 'password'
    GeneratedUtils.sleep(500);
    by = By.cssSelector("#inputPassword");
    driver.findElement(by).click();

    // 4. Type '123456' in 'password'
    GeneratedUtils.sleep(500);
    by = By.cssSelector("#inputPassword");
    driver.findElement(by).sendKeys("123456");

    // 5. Click 'Log In'
    GeneratedUtils.sleep(500);
    by = By.xpath("//button[. = 'Log In']");
    driver.findElement(by).click();

  }

  @Override
  public ReportingDriver getDriver() {
    return (ReportingDriver) driver;
  }

  @AfterAll
  static void tearDown() {
    if (driver != null) {
      driver.quit();
    }
  }
}
