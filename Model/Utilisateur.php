<?PHP
	class Utilisateur{
		private ?int $id = null;
		private ?string $q1 = null;
		private ?string $q2 = null;
		private ?string $q3 = null;

		
		function __construct(string $q1, string $q2, string $q3){
			
			$this->q1=$q1;
			$this->q2=$q2;
			$this->q3=$q3;

		}
		
		function getId(): int{
			return $this->id;
		}
		function getq1(): string{
			return $this->q1;
		}
		function getq2(): string{
			return $this->q2;
		}
		function getq3(): string{
			return $this->q3;
		}

		function setq1(string $q1): void{
			$this->q1=$q1;
		}
		function setq2(string $q2): void{
			$this->q2=$q2;
		}
		function setq3(string $q3): void{
			$this->q3=$q3;
		}
	}
?>