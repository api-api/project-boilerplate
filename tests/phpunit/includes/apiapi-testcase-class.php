<?php

class APIAPI_TestCase extends PHPUnit_Framework_TestCase {
	public function expectException( $exception ) {
		if( method_exists( $this, 'setExpectedException' ) ) {
			return $this->setExpectedException( $exception );
		}
		return parent::expectException( $exception );
	}
}