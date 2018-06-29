<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'shamiminfo_wp1');

/** MySQL database username */
define('DB_USER', 'shamiminfo_shamim');

/** MySQL database password */
define('DB_PASSWORD', '01794939992');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@9mg4h.7gO:/P;!TzR;@HNbRCH/DPXYeiz6xTGfS9k+AdQ8In&IUO/X*4friKx [');
define('SECURE_AUTH_KEY',  'U]NVT?&,^J(^XYtgyDHFL};rw#YJYwQBC7w!4HajKX=vt)LM1 !pOY~,@U2?XR?K');
define('LOGGED_IN_KEY',    '=~/>~@u1_$HT#uJtn_TaB(2mUuyf~LcxL+QX NuVYz,d=/{LG@fcXyFgfZs]da|j');
define('NONCE_KEY',        '@(U2#yA/ltlLbaQBb~?XS@5^/h4cnZOxTN`!aX (#QHi?0u27L-2R{Z)21B|<0Je');
define('AUTH_SALT',        '1wN5i8{WZ4uTTTIF[Hxkh7*pt#$f6)K|krn_Bzj!G5-nGRZ]9I{<I,2RyIyZ?Gxc');
define('SECURE_AUTH_SALT', 'J4YvoK%lW1Db48C1Xf$6OA@*WUR],-ADco@iwLCVB7P5;>k1WrmNppaC{BRS|>.>');
define('LOGGED_IN_SALT',   '~K?N+7s#3Y<X&A/2w#r:Tk&BZ5DHrnHAJuiIqI*deUE,da+&tCwMG^p.[.;pn;n)');
define('NONCE_SALT',       '_BM8ZI+pj=;C:]Q^9uz/0; f=FHeW?WAo;dz!l@LHh9C]eiX^7Vu>):@smW]Wb;$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
