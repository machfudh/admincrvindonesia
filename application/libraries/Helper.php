<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of helper
 *
 * @author Moh. Machfduh
 */
class helper {

    static function clearText($text) {
        $text = trim($text);
        $text = strip_tags($text);
        $text = htmlspecialchars($text);

        return $text;
    }

    static function clearInt($value) {
        $value = intval($value);

        if ($value < 0) {

            $value = 0;
        }

        return $value;
    }

    static function isCorrectFullname($fullname) {
        if (strlen($fullname) > 0) {

            return true;
        }

        return false;
    }

    static function isCorrectLogin($username) {
        if (preg_match("/^([a-zA-Z]{4,24})?([a-zA-Z][a-zA-Z0-9_]{4,24})$/i", $username)) {

            return true;
        }

        return false;
    }

    static function isCorrectPassword($password) {

        if (preg_match('/^[a-z0-9_\d$@$!%*?&]{6,20}$/i', $password)) {

            return true;
        }

        return false;
    }

    static function isCorrectEmail($email) {
        if (preg_match('/[0-9a-z_-]+@[-0-9a-z_^\.]+\.[a-z]{2,3}/i', $email)) {

            return true;
        }

        return false;
    }

    static function getLang($language) {
        $languages = array("en",
            "ru",
            "id");

        $result = "en";

        foreach ($languages as $value) {

            if ($value === $language) {

                $result = $language;

                break;
            }
        }

        return $result;
    }

    static function generateHash($n = 7) {
        $key = '';
        $pattern = '123456789abcdefg';
        $counter = strlen($pattern) - 1;

        for ($i = 0; $i < $n; $i++) {

            $key .= $pattern{rand(0, $counter)};
        }

        return $key;
    }

    static function generateSalt($n = 3) {
        $key = '';
        $pattern = '1234567890abcdefghijklmnopqrstuvwxyz.,*_-=+';
        $counter = strlen($pattern) - 1;

        for ($i = 0; $i < $n; $i++) {

            $key .= $pattern{rand(0, $counter)};
        }

        return $key;
    }

    static function ip_addr() {
        (string) $ip_addr = 'undefined';

        if (isset($_SERVER['REMOTE_ADDR']))
            $ip_addr = $_SERVER['REMOTE_ADDR'];

        return $ip_addr;
    }

    static function u_agent() {
        (string) $u_agent = 'undefined';

        if (isset($_SERVER['HTTP_USER_AGENT']))
            $u_agent = $_SERVER['HTTP_USER_AGENT'];

        return $u_agent;
    }
    
    
//    static function printError($error_code, $error_description = "unknown")
//        {
//            $result = array("error" => true,
//                            "error_code" => $error_code,
//                            "error_description" => $error_description);
//
//            echo json_encode($result);
//            exit;
//        }

}

?>
